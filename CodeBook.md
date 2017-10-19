# CodeBook


## 1. Source of the Data

The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


## 2. Steps taken

a) Preparation of work and files

Install and load the needed packages: dplyr; readr;

Load packages to be used

Download and read data from the Source (Internet link)

We record the date when the files were downloAded

Variable DataDirUCI receives as its value the directory where data was unzipped

Tidy data directory and filenames are assigned to variables (tidyDataFile and tidyDataFileAVG respectively)

b) Answer to the specific task requierements

Task 1:

Merge the training and the test sets to create one data set:

Combine data tables (train and test) by rows

Task 2:

Extract measurements (only) on the mean and standard deviation for each measurement

Read features's labels

Assign nnames to the feature columns

Check the match to argument mean or standard deviation (sd)

This needs to be performed by looking at each element of the vector (character vector)

Replace match cases

Task 3 & 4:

Use descriptive activity names to name the activities in the data set

Label the data set with descriptive activity names

Read activity labels

Assign names to the activities columnn

Combine data tables by columns

Task no 5:

Create a 2nd, independent tidy data set with the average of each variable for each activity and each subject

Column names for Activity and Subject are assigned and a tidy data set is created in the diretory


## 3. Variables

tAcc-XYZ = Accelerometer 3-axial raw signal (along a period of time denoted by t)

tGyro-XYZ = Gyroscope 3-axial raw signal (along a period of time denoted by t)


tBodyAccJerk-XYZ = Jerk signals obtained from body linear acceleration

tBodyGyroJerk-XYZ = Jerk signals obtained from angular velocity


tBodyAccMag = The magnitude of the three-dimensional signals above, calculated using the Euclidean norm

tGravityAccMag = The magnitude of the three-dimensional signals above, calculated using the Euclidean norm

tBodyAccJerkMag = The magnitude of the three-dimensional signals above, calculated using the Euclidean norm

tBodyGyroMag = The magnitude of the three-dimensional signals above, calculated using the Euclidean norm

tBodyGyroJerkMag = The magnitude of the three-dimensional signals above, calculated using the Euclidean norm


fBodyAcc-XYZ = Result after applying Fast Fourier Transform (FFT) to respective variables ('f' indicates frequency domain signals)

fBodyAccJerk-XYZ = Result after applying Fast Fourier Transform (FFT) to respective variables ('f' indicates frequency domain signals)

fBodyGyro-XYZ = Result after applying Fast Fourier Transform (FFT) to respective variables ('f' indicates frequency domain signals)

fBodyAccJerkMag = Result after applying Fast Fourier Transform (FFT) to respective variables ('f' indicates frequency domain signals)

fBodyGyroMag = Result after applying Fast Fourier Transform (FFT) to respective variables ('f' indicates frequency domain signals)

fBodyGyroJerkMag = Result after applying Fast Fourier Transform (FFT) to respective variables ('f' indicates frequency domain signals)


The set of variables that were estimated from these signals are: 

mean() = Mean value

std() = Standard deviation

mad() = Median absolute deviation 

max() = Largest value in array

min() = Smallest value in array

sma() = Signal magnitude area

energy() = Energy measure. Sum of the squares divided by the number of values. 

iqr() = Interquartile range 

entropy() = Signal entropy

arCoeff() = Autorregresion coefficients with Burg order equal to 4

correlation() = correlation coefficient between two signals

maxInds() = index of the frequency component with largest magnitude

meanFreq() = Weighted average of the frequency components to obtain a mean frequency

skewness() = skewness of the frequency domain signal 

kurtosis() = kurtosis of the frequency domain signal 

bandsEnergy() = Energy of a frequency interval within the 64 bins of the FFT of each window.

angle() = Angle between to vectors


gravityMean = vector obtained by averaging the signals in a signal window sample (iti si used in angle() variable)

tBodyAccMean = vector obtained by averaging the signals in a signal window sample (iti si used in angle() variable)

tBodyAccJerkMean = vector obtained by averaging the signals in a signal window sample (iti si used in angle() variable)

tBodyGyroMean = vector obtained by averaging the signals in a signal window sample (iti si used in angle() variable) 

tBodyGyroJerkMean = vector obtained by averaging the signals in a signal window sample (iti si used in angle() variable)

