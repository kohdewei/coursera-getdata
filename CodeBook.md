
# Code Book

## Subject

A unique integer representing the subject who performed the Activity for each window sample.  Its range is from 1 to 30.

## Activity

One of 6 activities that the subject performs while wearing the smartphone.  The possible values include:

* Walking
* Walking_Upstairs
* Walking_Downstairs
* Sitting
* Standing
* Laying

## Signal Variables

There are a total of 66 mean and standard deviation signal variables obtained from the accelerometer and gyroscope 3-axial raw signals.  The variable names have been recoded to take the following descriptive format:

* **(Time|Freq)**: Time domain signals or Frequency domain signals
* **(BodyGyro|BodyAcc|GravityAcc)**: Body Gyroscope, Body Accelerometer, or Gravity Accelerometer signals
* **(Jerk)?**: Signals obtained by deriving the body acceleration and angular velocity in time
* **(Mag)?**: Signals representing the magnitudes of 3D signals calculated using the Euclidean norm
* **(Mean|Std)**: Mean or Standard deviation of signal values
* **(X|Y|Z)**: Axial signals in the X, Y, or Z directions

The variable names can be expressed in regular expression as follows, with the above decoded meanings:

* (Time|Freq)(BodyGyro|BodyAcc|GravityAcc)(Jerk)?(Mag)?(Mean|Std)(X|Y|Z)

The full set of measurement variables are as follows, categorised by signal type and domain:

Signal                            |  Time Domain              | Frequency Domain
----------------------------------|---------------------------|-------------------------
Body Gyroscope                    |  TimeBodyGyroMeanX        | FreqBodyGryoMeanX
                                  |  TimeBodyGyroMeanY        | FreqBodyGryoMeanY
                                  |  TimeBodyGyroMeanZ        | FreqBodyGryoMeanZ
                                  |  TimeBodyGyroStdX         | FreqBodyGyroStdX
                                  |  TimeBodyGyroStdY         | FreqBodyGyroStdY
                                  |  TimeBodyGyroStdZ         | FreqBodyGyroStdZ
Body Gyroscope (Mag)              |  TimeBodyGyroMagMean      | FreqBodyGryoMagMean
                                  |  TimeBodyGyroMagStd       | FreqBodyGyroMagStd
Body Gyroscope Jerk               |  TimeBodyGryoJerkMeanX    |
                                  |  TimeBodyGryoJerkMeanY    |
                                  |  TimeBodyGryoJerkMeanZ    |
                                  |  TimeBodyGryoJerkStdX     |
                                  |  TimeBodyGryoJerkStdY     |
                                  |  TimeBodyGryoJerkStdZ     |
Body Gyroscope Jerk (Mag)         |  TimeBodyGyroJerkMagMean  | FreqBodyGyroJerkMagMean
                                  |  TimeBodyGyroJerkMagStd   | FreqBodyGyroJerkMagStd
Body Accelerometer                |  TimeBodyAccMeanX         | FreqBodyAccMeanX
                                  |  TimeBodyAccMeanY         | FreqBodyAccMeanY
                                  |  TimeBodyAccMeanZ         | FreqBodyAccMeanZ
                                  |  TimeBodyAccStdX          | FreqBodyAccStdX
                                  |  TimeBodyAccStdY          | FreqBodyAccStdY
                                  |  TimeBodyAccStdZ          | FreqBodyAccStdZ
Body Accelerometer (Mag)          |  TimeBodyAccMagMean       | FreqBodyAccMagMean
                                  |  TimeBodyAccMagStd        | FreqBodyAccMagStd
Body Accelerometer Jerk           |  TimeBodyAccJerkMeanX     | FreqBodyAccJerkMeanX
                                  |  TimeBodyAccJerkMeanY     | FreqBodyAccJerkMeanY
                                  |  TimeBodyAccJerkMeanZ     | FreqBodyAccJerkMeanZ
                                  |  TimeBodyAccJerkStdX      | FreqBodyAccJerkStdX
                                  |  TimeBodyAccJerkStdY      | FreqBodyAccJerkStdY
                                  |  TimeBodyAccJerkStdZ      | FreqBodyAccJerkStdZ
Body Accelerometer Jerk (Mag)     |  TimeBodyAccJerkMagMean   | FreqBodyAccJerkMagMean
                                  |  TimeBodyAccJerkMagStd    | FreqBodyAccJerkMagStd
Gravity Accelerometer             |  TimeGravityAccMeanX      |
                                  |  TimeGravityAccMeanY      |
                                  |  TimeGravityAccMeanZ      |
                                  |  TimeGravityAccStdX       |
                                  |  TimeGravityAccStdY       |
                                  |  TimeGravityAccStdZ       |
Gravity Accelerometer (Mag)       |  TimeGravityAccMagMean    |
                                  |  TimeGravityAccMagStd     |

## Steps

Before running run_analysis.r, the following steps must be undertaken:

1. Download the [Human Activity Recognition Using Smartphone Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

2. Unzip the downloaded file and copy run_analysis.r into the "UCI HAR Dataset" folder.

The run_analysis.r script runs through the following steps:

1. Read the training and test datasets from the /train and /test folders.

2. Read the feature and activity mapping data to allow for decoding of variables and activity labels respectively.

3. Merge the training and test datasets into 3 variables: `X`, `y` and `subject`, which corresponds to /train/X_train.txt, /test/X_test.txt; /train/y_train.txt, /test/y_test.txt; and /train/subject_train.txt, /test/subject_test.txt respectively.

4. Extract only the signals that correspond to mean and standard deviation measurements.  This is indicated by mean() and std() in the label names.  Note that the meanFreq() variables are not considered for this project, since we do not require the number of rows used to compute each mean.

5. Label the data set with descriptive variable names.  The prefix `f` and `t` are changed to Freq and Time respectively, and other formatting inconsistencies are cleared up.  This will allow other researchers to easily discern the definition of each variable.

6. Label the dataset with the activity names using the activity label mapping file.

7. Merge the 3 datasets to produce a dataframe containing the measurement values corresponding to each subject and activity for each window sample.

8. The final tidied dataset is placed in the `data` variable.

9. A second tidied dataset is generated in the `meanData` variable by obtaining the average of each measurement variable for each activity and each subject.  This dataset is then written to the file 'meanData.txt'.
