
# Code Book

-----

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

Signal                              Time Domain               Frequency Domain
----------------------------------- ------------------------- -------------------------
Body Gyroscope                      TimeBodyGyroMeanX         FreqBodyGryoMeanX
                                    TimeBodyGyroMeanY         FreqBodyGryoMeanY
                                    TimeBodyGyroMeanZ         FreqBodyGryoMeanZ
                                    TimeBodyGyroStdX          FreqBodyGyroStdX
                                    TimeBodyGyroStdY          FreqBodyGyroStdY
                                    TimeBodyGyroStdZ          FreqBodyGyroStdZ
Body Gyroscope (Mag)                TimeBodyGyroMagMean       FreqBodyGryoMagMean
                                    TimeBodyGyroMagStd        FreqBodyGyroMagStd
Body Gyroscope Jerk                 TimeBodyGryoJerkMeanX
                                    TimeBodyGryoJerkMeanY
                                    TimeBodyGryoJerkMeanZ
                                    TimeBodyGryoJerkStdX
                                    TimeBodyGryoJerkStdY
                                    TimeBodyGryoJerkStdZ
Body Gyroscope Jerk (Mag)           TimeBodyGyroJerkMagMean   FreqBodyGyroJerkMagMean
                                    TimeBodyGyroJerkMagStd    FreqBodyGyroJerkMagStd
Body Accelerometer                  TimeBodyAccMeanX          FreqBodyAccMeanX
                                    TimeBodyAccMeanY          FreqBodyAccMeanY
                                    TimeBodyAccMeanZ          FreqBodyAccMeanZ
                                    TimeBodyAccStdX           FreqBodyAccStdX
                                    TimeBodyAccStdY           FreqBodyAccStdY
                                    TimeBodyAccStdZ           FreqBodyAccStdZ
Body Accelerometer (Mag)            TimeBodyAccMagMean        FreqBodyAccMagMean
                                    TimeBodyAccMagStd         FreqBodyAccMagStd
Body Accelerometer Jerk             TimeBodyAccJerkMeanX      FreqBodyAccJerkMeanX
                                    TimeBodyAccJerkMeanY      FreqBodyAccJerkMeanY
                                    TimeBodyAccJerkMeanZ      FreqBodyAccJerkMeanZ
                                    TimeBodyAccJerkStdX       FreqBodyAccJerkStdX
                                    TimeBodyAccJerkStdY       FreqBodyAccJerkStdY
                                    TimeBodyAccJerkStdZ       FreqBodyAccJerkStdZ
Body Accelerometer Jerk (Mag)       TimeBodyAccJerkMagMean    FreqBodyAccJerkMagMean
                                    TimeBodyAccJerkMagStd     FreqBodyAccJerkMagStd
Gravity Accelerometer               TimeGravityAccMeanX
                                    TimeGravityAccMeanY
                                    TimeGravityAccMeanZ
                                    TimeGravityAccStdX
                                    TimeGravityAccStdY
                                    TimeGravityAccStdZ
Gravity Accelerometer (Mag)         TimeGravityAccMagMean
                                    TimeGravityAccMagStd
----------------------------------- ------------------------- -------------------------
