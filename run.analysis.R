## Install and load the needed packages:
## dplyr; readr;

	install.packages("dplyr")
	install.packages("readr")
	
## Load packages to be used

	library(dplyr)
	library(readr)

## Download and read data from the Source (Internet link)

	urltest <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
	filetest <- filetest.zip
	download.file(urltest, destfile = "dataFileZIP", method = "curl")

## We record the date when the files were downloAded

	datedownloaded <- date()
	datedownloaded

## [1] "Mon Oct 16 16:21:54 2017"

	unzip(dataFileZIP)

## Variable DataDirUCI receives as its value the directory where data was unzipped
	
	DataDirUCI <- "./UCI HAR Dataset"
  
## Tidy data directory and filenames are assigned to variables (tidyDataFile and tidyDataFileAVG respectively)

	tidyDataFile <- "./TidyData.txt"
	tidyDataFileAVGtxt <- "./TidyData_AVG.txt"

##############################################################################################################
## Requierement no 1:
## Merge the training and the test sets to create one data set:

	x_train <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE)
	X_test <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)
	y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", header = FALSE)
	y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE)
	subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE)
	subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE)

## Combine data tables (train and test) by rows
	x <- rbind(x_train, X_test)
	y <- rbind(y_train, y_test)
	s <- rbind(subject_train, subject_test)


## Requierement no 2:
## Extract measurements (only) on the mean and standard deviation for each measurement

## Read features's labels

	features <- read.table("./UCI HAR Dataset/features.txt")

## Assign nnames to the feature columns
	names(features) <- c('feat_id', 'feat_name')

## Check the match to argument mean or standard deviation (sd)
## This needs to be performed by looking at each element of the vector (character vector)

	index_features <- grep("-mean\\(\\)|-std\\(\\)", features$feat_name) 
	x <- x[, index_features] 

## Replace match cases

	names(x) <- gsub("\\(|\\)", "", (features[index_features, 2]))

## Requierement no 3:
## Use descriptive activity names to name the activities in the data set:
## and
## Requierement no 4:
## Label the data set with descriptive activity names:

## Read activity labels
	activities <- read.table("./UCI HAR Dataset/activity_labels.txt")

## Assign names to the activities columnn

	names(activities) <- c('act_id', 'act_name')
	y[, 1] = activities[y[, 1], 2]
	names(y) <- "Activity"
	names(s) <- "Subject"

## Combined data tables by columns

	tidyDataSet <- cbind(s, y, x)

## Requierement no 5:
## Create a 2nd, independent tidy data set with the average of each variable for each activity and each subject:
  	
	p <- tidyDataSet[, 3:dim(tidyDataSet)[2]] 
  	tidyDataAVGSet <- aggregate(p,list(tidyDataSet$Subject, tidyDataSet$Activity), mean)
  
## Column names for Activity and Subject are assigned and a tidy data set is created in the diretory
	
	names(tidyDataAVGSet)[1] <- "Subject"
	names(tidyDataAVGSet)[2] <- "Activity"
	write.table(tidyDataSet, tidyDataFile)
	write.table(tidyDataAVGSet, tidyDataFileAVGtxt)



