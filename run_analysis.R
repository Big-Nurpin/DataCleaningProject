##Script that does all of the tasks indicated by the assignment

##Download and unzip the raw data. Note: data was downloaded Oct 21, 2020 
rawDataURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(rawDataURL, destfile = "rawData.zip")
unzip("rawData.zip")

##Load the raw data into data frames and add subject ID's and variable labels
train <- read.table("UCI HAR Dataset/train/X_train.txt")
features <- scan("UCI HAR Dataset/features.txt", what = "character", sep = "\n")
features <- sub("[0-9]+ ", "", features)
names(train) <- features
train$labels <- scan("UCI HAR Dataset/train/Y_train.txt", what = "factor",
                      sep = "\n")
train$id <- scan("UCI HAR Dataset/train/subject_train.txt", what = "factor",
                  sep = "\n")

test <- read.table("UCI HAR Dataset/test/X_test.txt")
names(test) <- features
test$labels <- scan("UCI HAR Dataset/test/Y_test.txt", what = "factor",
                     sep = "\n")
test$id <- scan("UCI HAR Dataset/test/subject_test.txt", what = "factor",
                 sep = "\n")

##Merge the training and test data
mergedData <- rbind(train, test)

##Extracts only the mean and standard deviation for each measurement
exData <- mergedData[, grepl("mean", names(mergedData)) | 
                         grepl("std", names(mergedData)) | 
                         grepl("id", names(mergedData)) | 
                         grepl("labels", names(mergedData))]

##Renames the activities with descriptive names
library(plyr)
exData$labels <- as.factor(exData$labels)
exData$labels <- mapvalues(exData$labels, from = levels(exData$labels), 
                           to = c("walk", "walkup", "walkdown",
                                  "sit", "stand", "lay"))

##Renames variables
