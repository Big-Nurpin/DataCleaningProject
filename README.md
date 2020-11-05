# Data Cleaning Project

## Purpose

The purpose of this project is the show that I can download and clean a dataset that can be used for later analysis. 

## Data

The data used in project is from the UCI Machine Learning Repository. The following url was used to download the data on October 21, 2020 : https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. It contains accelorameter measurements of 30 subjects performing various task. For more information please see the codebook or visit the following URL: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

## Procedure
The data was first downloaded to RStudio. It was initially split into training and test sets. The variable names were added to both using the provided "features" from the data set. The activity and subject id's were added and the two sets were merged. The mean and standard deviations of the measurements were extracted and the labels and variable names were added and cleaned up, respectively. A final dataset was created and saved with the means for each activity and subject for every variable. This code is available in run_analysis.R

### run_analysis.R
The code was written following these steps taken from the assignment webpage on Coursera:  
- Merges the training and the test sets to create one data set.  
- Extracts only the measurements on the mean and standard deviation for each measurement.  
- Uses descriptive activity names to name the activities in the data set.  
- Appropriately labels the data set with descriptive variable names.  
- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.