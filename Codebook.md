CodeBook for Tidy Data Assignment
================
NJL
04/05/2021

## Description

One of the most exciting areas in all of data science right now is
wearable computing - see for example this article . Companies like
Fitbit, Nike, and Jawbone Up are racing to develop the most advanced
algorithms to attract new users. The data linked to from the course
website represent data collected from the accelerometers from the
Samsung Galaxy S smartphone.

The features selected for this database come from the accelerometer and
gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain
signals (prefix ‘t’ to denote time) were captured at a constant rate of
50 Hz. Then they were filtered using a median filter and a 3rd order low
pass Butterworth filter with a corner frequency of 20 Hz to remove
noise. Similarly, the acceleration signal was then separated into body
and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ)
using another low pass Butterworth filter with a corner frequency of 0.3
Hz.

Subsequently, the body linear acceleration and angular velocity were
derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and
tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional
signals were calculated using the Euclidean norm (tBodyAccMag,
tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these
signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ,
fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the ‘f’ to
indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for
each pattern:  
‘-XYZ’ is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ tGravityAcc-XYZ tBodyAccJerk-XYZ tBodyGyro-XYZ
tBodyGyroJerk-XYZ tBodyAccMag tGravityAccMag tBodyAccJerkMag
tBodyGyroMag tBodyGyroJerkMag fBodyAcc-XYZ fBodyAccJerk-XYZ
fBodyGyro-XYZ fBodyAccMag fBodyAccJerkMag fBodyGyroMag fBodyGyroJerkMag

The set of variables that were estimated from these signals are:

mean(): Mean value std(): Standard deviation meanFreq(): Weighted
average of the frequency components to obtain a mean frequency

Additional vectors obtained by averaging the signals in a signal window
sample. These are used on the angle() variable:

gravityMean tBodyAccMean tBodyAccJerkMean tBodyGyroMean
tBodyGyroJerkMean

## Input Files for the Assignment

1.  Activity\_labels.txt Contains the labels of the six activities

2.  features.txt Contains 561 labels for the measured data and the
    derived data

3.  subject\_test.txt Contains the subject label identified as number
    for each activity for testing set

4.  subect\_train.txt Contains the subject label identified as number
    for each activity for training set

5.  X\_test.txt Contains the measured and derived data of the test set

6.  y\_test.txt Contains the activity labels for the data in the
    X-test.txt

7.  X\_train.txt Contains the measured and derived data of the training
    set

8.  y\_train.txt Contains the activity labels for the data in the
    X-train.txt

## Output File

1.  Tidy\_Data.txt

-   Merges the training and the test sets to create one data set.
-   Extracts only the measurements on the mean and standard deviation
    for each measurement.
-   Uses descriptive activity names to name the activities in the data
    set
-   Appropriately labels the data set with descriptive variable names.

## Description of Data in the output file Tidy\_Data.txt

“Activity” - One of the six activities is stored in this variable. The
six activities are

                                WALKING
                                WALKING_UPSTAIRS
                                WALKING_DOWNSTAIRS
                                SITTING
                                STANDING
                                LAYING
                                

“Subject” - The subject identified as a number is stored in this
varable. 30 subjects took part in this data collection, so the numbers
are from 1 to 30.

“tBodyAcc-mean()-X” - Mean of the Body Acceleration in the X axis in the
time domain

“tBodyAcc-mean()-Y” - Mean of the Body Acceleration in the Y axis in the
time domain

“tBodyAcc-mean()-Z” - Mean of the Body Acceleration in the Z axis in the
time domain

“tBodyAcc-std()-X” - Standard Deviation of the Body Acceleration in the
X axis in the time domain

“tBodyAcc-std()-Y” - Standard Deviation of the Body Acceleration in the
Y axis in the time domain

“tBodyAcc-std()-Z” - Standard Deviation of the Body Acceleration in the
Z axis in the time domain

“tGravityAcc-mean()-X” - Mean of Acceleration due to Gravity in the X
axis in the time domain

“tGravityAcc-mean()-Y” - Mean of Acceleration due to Gravity in the Y
axis in the time domain

“tGravityAcc-mean()-Z” - Mean of Acceleration due to Gravity in the Z
axis in the time domain

“tGravityAcc-std()-X” - Standard Deviation of Acceleration due to
Gravity in the X axis in the time domain

“tGravityAcc-std()-Y” - Standard Deviation of Acceleration due to
Gravity in the Y axis in the time domain

“tGravityAcc-std()-Z” - Standard Deviation of Acceleration due to
Gravity in the Z axis in the time domain

“tBodyAccJerk-mean()-X” - Mean of the Body Linear Acceleration in the X
axis in the time domain

“tBodyAccJerk-mean()-Y” - Mean of the Body Linear Acceleration in the Y
axis in the time domain

“tBodyAccJerk-mean()-Z” - Mean of the Body Linear Acceleration in the Z
axis in the time domain

“tBodyAccJerk-std()-X” - Std Dev of the Body Linear Acceleration in the
X axis in the time domain

“tBodyAccJerk-std()-Y” - Std Dev of the Body Linear Acceleration in the
Y axis in the time domain

“tBodyAccJerk-std()-Z” - Std Dev of the Body Linear Acceleration in the
Z axis in the time domain

“tBodyGyro-mean()-X” “tBodyGyro-mean()-Y” “tBodyGyro-mean()-Z” - Mean of
Gyroscope values in the X, Y, Z axes in the time domain

“tBodyGyro-std()-X” “tBodyGyro-std()-Y” “tBodyGyro-std()-Z” - Std Dev of
Gyroscope values in the X, Y, Z axes in the time domain

“tBodyGyroJerk-mean()-X” “tBodyGyroJerk-mean()-Y”
“tBodyGyroJerk-mean()-Z” - Mean of Angular Velocity values in the X, Y,
Z axes in the time domain

“tBodyGyroJerk-std()-X” “tBodyGyroJerk-std()-Y” “tBodyGyroJerk-std()-Z”-
Std Dev of Angular Velocity values in the X, Y, Z axes in the time
domain

“tBodyAccMag-mean()” - Mean of magnitude of Body Acceleration in time
domain

“tBodyAccMag-std()” - Std Dev of magnitude of Body Acceleration in time
domain

“tGravityAccMag-mean()” - Mean of magnitude of Acceleration due to
gravity in time domain

“tGravityAccMag-std()” - Std Dev of magnitude of Acceleration due to
gravity in time domain

“tBodyAccJerkMag-mean()”- Mean of magnitude of Linear Acceleration due
to gravity in time domain

“tBodyAccJerkMag-std()” - Std Dev of magnitude of Linear Acceleration
due to gravity in time domain

“tBodyGyroMag-mean()” - Mean of magnitude of Gyro values in time domain

“tBodyGyroMag-std()” - Std Dev of magnitude of Gyro values in time
domain

“tBodyGyroJerkMag-mean()” - Mean of magnitude of Angular Velocity in
time domain

“tBodyGyroJerkMag-std()”- Std Dev of magnitude of Angular Velocity in
time domain

“fBodyAcc-mean()-X” “fBodyAcc-mean()-Y” “fBodyAcc-mean()-Z” - Mean of
the Body Acceleration in X, Y, Z axes in the frequency domain

“fBodyAcc-std()-X” “fBodyAcc-std()-Y” “fBodyAcc-std()-Z” - Std Dev of
the Body Acceleration in X, Y, Z axes in the frequency domain

“fBodyAcc-meanFreq()-X” “fBodyAcc-meanFreq()-Y” “fBodyAcc-meanFreq()-Z”-
Mean Frequency of the Body Acceleration in X, Y, Z axes

“fBodyAccJerk-mean()-X” “fBodyAccJerk-mean()-Y” “fBodyAccJerk-mean()-Z”-
Mean of the Linear Acceleration in X, Y, Z axes in the frequency domain

“fBodyAccJerk-std()-X” “fBodyAccJerk-std()-Y” “fBodyAccJerk-std()-Z” -
Std Dev of the Linear Acceleration in X, Y, Z axes in the frequency
domain

“fBodyAccJerk-meanFreq()-X” “fBodyAccJerk-meanFreq()-Y”
“fBodyAccJerk-meanFreq()-Z” - Mean Frequency of the Body Acceleration in
X, Y, Z axes

“fBodyGyro-mean()-X” “fBodyGyro-mean()-Y” “fBodyGyro-mean()-Z” - Mean of
the Gyroscope values in X, Y, Z axes in the frequency domain

“fBodyGyro-std()-X” “fBodyGyro-std()-Y” “fBodyGyro-std()-Z” - Std Dev of
the Gyroscope values in X, Y, Z axes in the frequency domain

“fBodyGyro-meanFreq()-X” “fBodyGyro-meanFreq()-Y”
“fBodyGyro-meanFreq()-Z” - Mean Frequency of the Gyroscope values in X,
Y, Z axes

“fBodyAccMag-mean()” - Mean of magnitude of Body Acceleration in
frequency domain

“fBodyAccMag-std()” - Std Dev of magnitude of Body Acceleration in
frequency domain

“fBodyAccMag-meanFreq()” - Mean frequency of Magnitude of Body
Acceleration

“fBodyBodyAccJerkMag-mean()” - Mean of magnitude of Linear Acceleration
in frequency domain

“fBodyBodyAccJerkMag-std()” - Std Dev of magnitude of Linear
Acceleration in frequency domain

“fBodyBodyAccJerkMag-meanFreq()” - Mean frequency of magnitude of Linear
Acceleration

“fBodyBodyGyroMag-mean()” - Mean of magnitude of Gyro values in
frequency domain

“fBodyBodyGyroMag-std()” - Std Dev of magnitude of Gyro values in
frequency domain

“fBodyBodyGyroMag-meanFreq()” - Mean frequency of magnitude of Gyroscope
values

“fBodyBodyGyroJerkMag-mean()” - Mean of magnitude of Angular Velocity in
frequency domain

“fBodyBodyGyroJerkMag-std()” - Std Dev of magnitude of Angular Velocity
in frequency domain

“fBodyBodyGyroJerkMag-meanFreq()” - Mean frequency of magnitude of
Angular Velocity
