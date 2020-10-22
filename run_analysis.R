##Script that does all of the tasks indicated by the assignment

##Download and unzip the raw data. Note: data was downloaded Oct 21, 2020 
rawDataURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(rawDataURL, destfile = "rawData.zip")
unzip("rawData.zip")

