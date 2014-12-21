CleanDataProject
================

This repository contains files for the project assignment of the Getting and Cleaning Data course on Coursera.

=== Files ===

This repository contains the following files:
README.md: this README file
run_analysis.R: a R script that processes the accelerometer data
tidy.txt: the clean data file contains the average of each variable for each activity and each subject

=== Code ===

The R code "run_analysis" does the following:

1. Reads the data collected from the accelerometers from the Samsung Galaxy S smartphone for the UCI data repository (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones);

2. Mark the variables in the data frame with their names (details can be found in the "Data" section below);

3. Extracts only the measurements on the mean and standard deviation for each measurement;

4. Calculate the average of each variable for each activity and each subject and put them in a new data set;

5. Write the created data set to a text file "tidy.txt".

Note: the code assumes that the data files are located in "data//UCI_HAR_Dataset" in the current work directory.

=== Original data ===

The orginal data set contains experiment data with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity were captured at a constant rate of 50Hz. 

The measurements in the data set come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

=== Processed data ===

The variables in the processed data ("tidy.txt") are:

"Subject": Subject id; integer; the value ranges from 1 to 30

"Activity": Name of activity; character; the values are: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

"tBodyAcc.mean...X": average of mean of X component of body acceleration signals; numerical;  

"tBodyAcc.mean...Y": average of mean of Y component of body acceleration signals; numerical;

"tBodyAcc.mean...Z": average of mean of Z component of body acceleration signals; numerical;

"tBodyAcc.std...X": average of standard deviation of X component of body acceleration signals;; numerical;

"tBodyAcc.std...Y": average of standard deviation of Y component of body acceleration signals;; numerical;

"tBodyAcc.std...Z": average of standard deviation of Z component of body acceleration signals;; numerical;

"tGravityAcc.mean...X": average of mean of X component of gravity acceleration signals; numerical;

"tGravityAcc.mean...Y": average of mean of Y component of gravity acceleration signals; numerical;

"tGravityAcc.mean...Z": average of mean of Z component of gravity acceleration signals; numerical;

"tGravityAcc.std...X": average of standard deviation of X component of gravity acceleration signals; numerical;

"tGravityAcc.std...Y": average of standard deviation of Y component of gravity acceleration signals; numerical;

"tGravityAcc.std...Z": average of standard deviation of Z component of gravity acceleration signals; numerical;

"tBodyAccJerk.mean...X": average of mean of X component of body acceleration Jerk signals; numerical;

"tBodyAccJerk.mean...Y": average of mean of Y component of body acceleration Jerk signals; numerical;

"tBodyAccJerk.mean...Z": average of mean of Z component of body acceleration Jerk signals; numerical;

"tBodyAccJerk.std...X": average of standard deviation of X component of body acceleration Jerk signals; numerical;

"tBodyAccJerk.std...Y": average of standard deviation of Y component of body acceleration Jerk signals; numerical;

"tBodyAccJerk.std...Z": average of standard deviation of Z component of body acceleration Jerk signals; numerical;

"tBodyGyro.mean...X": average of mean of X component of angular velocity signals; numerical;

"tBodyGyro.mean...Y": average of mean of Y component of angular velocity signals; numerical;

"tBodyGyro.mean...Z": average of mean of Z component of angular velocity signals; numerical;

"tBodyGyro.std...X": average of standard deviation of X component of angular velocity signals; numerical; 

"tBodyGyro.std...Y": average of standard deviation of Y component of angular velocity signals; numerical; 

"tBodyGyro.std...Z": average of standard deviation of Z component of angular velocity signals; numerical;

"tBodyGyroJerk.mean...X": average of mean of X component of angular velocity Jerk signals; numerical; 

"tBodyGyroJerk.mean...Y": average of mean of Y component of angular velocity Jerk signals; numerical; 

"tBodyGyroJerk.mean...Z": average of mean of Z component of angular velocity Jerk signals; numerical;

"tBodyGyroJerk.std...X": average of standard deviation of X component of angular velocity Jerk signals; numerical; 

"tBodyGyroJerk.std...Y": average of standard deviation of Y component of angular velocity Jerk signals; numerical; 

"tBodyGyroJerk.std...Z": average of standard deviation of Z component of angular velocity Jerk signals; numerical; 

"tBodyAccMag.mean..": average of mean of magnitude of body acceleration signals;; numerical; 

"tBodyAccMag.std..": average of standard deviation of magnitude of body acceleration signals;; numerical; 

"tGravityAccMag.mean.." average of mean of magnitude of gravity acceleration signals;; numerical;

"tGravityAccMag.std..": average of standard deviation of magnitude of gravity acceleration signals;; numerical; 

"tBodyAccJerkMag.mean..": average of mean of magnitude of body acceleration Jerk signals; numerical; 

"tBodyAccJerkMag.std..": average of standard deviation of magnitude of body acceleration Jerk signals;; numerical; 

"tBodyGyroMag.mean..": average of mean of magnitude of angular velocity signals; numerical; 

"tBodyGyroMag.std..": average of standard deviation of magnitude of angular velocity signals; numerical; 

"tBodyGyroJerkMag.mean..": average of mean of magnitude of angular velocity Jerk signals; numerical; 

"tBodyGyroJerkMag.std..": average of standard deviation of magnitude of angular velocity Jerk signals; numerical; 

"fBodyAcc.mean...X": average of mean of X component of body acceleration signals in frequency domain; numerical; 

"fBodyAcc.mean...Y": average of mean of X component of body acceleration signals in frequency domain; numerical; 

"fBodyAcc.mean...Z": average of mean of X component of body acceleration signals in frequency domain; numerical; 

"fBodyAcc.std...X": average of standard deviation of X component of body acceleration signals in frequency domain; numerical; 

"fBodyAcc.std...Y": average of standard deviation of Y component of body acceleration signals in frequency domain; numerical; 

"fBodyAcc.std...Z": average of standard deviation of Z component of body acceleration signals in frequency domain; numerical; 

"fBodyAcc.meanFreq...X": average of mean frequency of X component of body acceleration signals; numerical; 

"fBodyAcc.meanFreq...Y": average of mean frequency of Y component of body acceleration signals; numerical;

"fBodyAcc.meanFreq...Z": average of mean frequency of Z component of body acceleration signals; numerical;

"fBodyAccJerk.mean...X": average of mean of X component of body acceleration Jerk signals in frequency domain; numerical;

"fBodyAccJerk.mean...Y": average of mean of Y component of body acceleration Jerk signals in frequency domain; numerical; 

"fBodyAccJerk.mean...Z": average of mean of Z component of body acceleration Jerk signals in frequency domain; numerical; 

"fBodyAccJerk.std...X": average of standard deviation of X component of body acceleration Jerk signals in frequency domain; numerical; 

"fBodyAccJerk.std...Y": average of standard deviation of Y component of body acceleration Jerk signals in frequency domain; numerical; 

"fBodyAccJerk.std...Z": average of standard deviation of Z component of body acceleration Jerk signals in frequency domain; numerical; 

"fBodyAccJerk.meanFreq...X": average of mean frequency of X component of body acceleration Jerk signals; numerical; 

"fBodyAccJerk.meanFreq...Y": average of mean frequency of Y component of body acceleration Jerk signals; numerical; 

"fBodyAccJerk.meanFreq...Z": average of mean frequency of Z component of body acceleration Jerk signals; numerical; 

"fBodyGyro.mean...X": average of mean of X component of angular velocity signals in frequency domain; numerical;

"fBodyGyro.mean...Y": average of mean of Y component of angular velocity signals in frequency domain; numerical; 

"fBodyGyro.mean...Z": average of mean of Z component of angular velocity signals in frequency domain; numerical; 

"fBodyGyro.std...X": average of std of X component of angular velocity signals in frequency domain; numerical; 

"fBodyGyro.std...Y": average of std of Y component of angular velocity signals in frequency domain; numerical; 

"fBodyGyro.std...Z": average of std of Z component of angular velocity signals in frequency domain; numerical; 

"fBodyGyro.meanFreq...X": average of mean frequency of X component of angular velocity signals; numerical; 

"fBodyGyro.meanFreq...Y": average of mean frequency of Y component of angular velocity signals; numerical; 

"fBodyGyro.meanFreq...Z": average of mean frequency of Z component of angular velocity signals; numerical; 

"fBodyAccMag.mean..": average of mean of magnitude of body acceleration signals in frequency domain; numerical;

"fBodyAccMag.std..": average of std of magnitude of body acceleration signals in frequency domain; numerical; 

"fBodyAccMag.meanFreq..": average of mean frequency of magnitude of body acceleration signals; numerical; 

"fBodyBodyAccJerkMag.mean..": average of mean of magnitude of body acceleration Jerk signals in frequency domain; numerical; 

"fBodyBodyAccJerkMag.std..": average of std of magnitude of body acceleration Jerk signals in frequency domain; numerical; 

"fBodyBodyAccJerkMag.meanFreq..": : average of mean frequency of magnitude of body acceleration Jerk signals in frequency domain; numerical; 

"fBodyBodyGyroMag.mean..": average of mean of magnitude of angular velocity signals in frequency domain; numerical; 

"fBodyBodyGyroMag.std..": average of std of magnitude of angular velocity signals in frequency domain; numerical; 

"fBodyBodyGyroMag.meanFreq..": average of mean frequency of magnitude of angular velocity signals in frequency domain; numerical; 

"fBodyBodyGyroJerkMag.mean..": average of mean of magnitude of angular velocity Jerk signals in frequency domain; numerical; 

"fBodyBodyGyroJerkMag.std..": average of mean of magnitude of angular velocity Jerk signals in frequency domain; numerical; 

"fBodyBodyGyroJerkMag.meanFreq..": average of mean of magnitude of angular velocity Jerk signals in frequency domain; numerical;

