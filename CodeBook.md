The original dataset from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
and described at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
contained 3-axial linear acceleration and angular velocity data sampled in a fixed-width sliding windows of 2.56 sec.
Data were collected from 30 volunteers performing six activities.  

The measurements summarized in this analysis are the mean and standard deviation over the sampling window of the X-axis,
Y-axis, Z-axis, and magnitude of the linear acceleration and angular velocity of the subject’s body.  These values are
corrected for gravity, observations of which are also included in this summary.  In addition, observations of the Jerk,
or change in acceleration with time, are included in this summary.  In some cases the original study included a frequency
from a Fast Fourier Transform.  These values are also summarized.

All of these details of the original study are described in the above link.  

This analysis script summarizes each of these variables by computing the average for each subject for each activity.
The columns of the summary data set are:

Subject : integer identifying the person studied for this observation
Activity : the activity engaged in for this observation
           possible values are: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, and LAYING

AverageOfBodyAcceleration.Mean.X : Average over multiple observations of mean X-axis body acceleration
AverageOfBodyAcceleration.Mean.Y : Average over multiple observations of mean Y-axis body acceleration
AverageOfBodyAcceleration.Mean.Z : Average over multiple observations of mean Z-axis body acceleration
AverageOfBodyAcceleration.Std.X : Average over multiple observations of standard deviation X-axis body acceleration
AverageOfBodyAcceleration.Std.Y : Average over multiple observations of standard deviation Y-axis body acceleration
AverageOfBodyAcceleration.Std.Z : Average over multiple observations of standard deviation Z-axis body acceleration
AverageOfGravityAcceleration.Mean.X : Average over multiple observations of mean X-axis gravity acceleration
AverageOfGravityAcceleration.Mean.Y : Average over multiple observations of mean Y-axis gravity acceleration
AverageOfGravityAcceleration.Mean.Z : Average over multiple observations of mean Z-axis gravity acceleration
AverageOfGravityAcceleration.Std.X : Average over multiple observations of standard deviation X-axis gravity acceleration
AverageOfGravityAcceleration.Std.Y : Average over multiple observations of standard deviation Y-axis gravity acceleration
AverageOfGravityAcceleration.Std.Z : Average over multiple observations of standard deviation Z-axis gravity acceleration
AverageOfBodyAccelerationJerk.Mean.X : Average over multiple observations of mean X-axis body acceleration jerk
AverageOfBodyAccelerationJerk.Mean.Y : Average over multiple observations of mean Y-axis body acceleration jerk
AverageOfBodyAccelerationJerk.Mean.Z : Average over multiple observations of mean Z-axis body acceleration jerk
AverageOfBodyAccelerationJerk.Std.X : Average over multiple observations of standard deviation X-axis body acceleration jerk
AverageOfBodyAccelerationJerk.Std.Y : Average over multiple observations of standard deviation Y-axis body acceleration jerk
AverageOfBodyAccelerationJerk.Std.Z : Average over multiple observations of standard deviation Z-axis body acceleration jerk
AverageOfBodyAngularVelocity.Mean.X : Average over multiple observations of mean X-axis body angular velocity
AverageOfBodyAngularVelocity.Mean.Y : Average over multiple observations of mean Y-axis body angular velocity
AverageOfBodyAngularVelocity.Mean.Z : Average over multiple observations of mean Z-axis body angular velocity
AverageOfBodyAngularVelocity.Std.X : Average over multiple observations of standard deviation X-axis body angular velocity
AverageOfBodyAngularVelocity.Std.Y : Average over multiple observations of standard deviation Y-axis body angular velocity
AverageOfBodyAngularVelocity.Std.Z : Average over multiple observations of standard deviation Z-axis body angular velocity
AverageOfBodyAngularVelocityJerk.Mean.X : Average over multiple observations of mean X-axis body angular velocity jerk
AverageOfBodyAngularVelocityJerk.Mean.Y : Average over multiple observations of mean Y-axis body angular velocity jerk
AverageOfBodyAngularVelocityJerk.Mean.Z : Average over multiple observations of mean Z-axis body angular velocity jerk
AverageOfBodyAngularVelocityJerk.Std.X : Average over multiple observations of standard deviation X-axis body angular velocity jerk
AverageOfBodyAngularVelocityJerk.Std.Y : Average over multiple observations of standard deviation Y-axis body angular velocity jerk
AverageOfBodyAngularVelocityJerk.Std.Z : Average over multiple observations of standard deviation Z-axis body angular velocity jerk
AverageOfBodyAccelerationMagnitude.Mean : Average over multiple observations of mean body acceleration magnitude
AverageOfBodyAccelerationMagnitude.Std : Average over multiple observations of standard deviation body acceleration magnitude
AverageOfGravityAccelerationMagnitude.Mean : Average over multiple observations of mean gravity acceleration magnitude
AverageOfGravityAccelerationMagnitude.Std : Average over multiple observations of standard deviation gravity acceleration magnitude
AverageOfBodyAccelerationJerkMagnitude.Mean : Average over multiple observations of mean body acceleration jerk magnitude
AverageOfBodyAccelerationJerkMagnitude.Std : Average over multiple observations of standard deviation body acceleration jerk magnitude
AverageOfBodyAngularVelocityMagnitude.Mean : Average over multiple observations of mean body acceleration magnitude
AverageOfBodyAngularVelocityMagnitude.Std : Average over multiple observations of standard deviation body acceleration magnitude
AverageOfBodyAngularVelocityJerkMagnitude.Mean : Average over multiple observations of mean body acceleration jerk magnitude
AverageOfBodyAngularVelocityJerkMagnitude.Std : Average over multiple observations of standard deviation body acceleration jerk magnitude
AverageOfFrequencyOfBodyAcceleration.Mean.X : Average over multiple observations of mean X-axis body acceleration frequency
AverageOfFrequencyOfBodyAcceleration.Mean.Y : Average over multiple observations of mean Y-axis body acceleration frequency
AverageOfFrequencyOfBodyAcceleration.Mean.Z : Average over multiple observations of mean Z-axis body acceleration frequency
AverageOfFrequencyOfBodyAcceleration.Std.X : Average over multiple observations of standard deviation X-axis body acceleration frequency
AverageOfFrequencyOfBodyAcceleration.Std.Y : Average over multiple observations of standard deviation Y-axis body acceleration frequency
AverageOfFrequencyOfBodyAcceleration.Std.Z : Average over multiple observations of standard deviation Z-axis body acceleration frequency
AverageOfFrequencyOfBodyAccelerationJerk.Mean.X : Average over multiple observations of mean X-axis body acceleration jerk frequency
AverageOfFrequencyOfBodyAccelerationJerk.Mean.Y : Average over multiple observations of mean Y-axis body acceleration jerk frequency
AverageOfFrequencyOfBodyAccelerationJerk.Mean.Z : Average over multiple observations of mean Z-axis body acceleration jerk frequency
AverageOfFrequencyOfBodyAccelerationJerk.Std.X : Average over multiple observations of standard deviation X-axis body acceleration jerk frequency
AverageOfFrequencyOfBodyAccelerationJerk.Std.Y : Average over multiple observations of standard deviation Y-axis body acceleration jerk frequency
AverageOfFrequencyOfBodyAccelerationJerk.Std.Z : Average over multiple observations of standard deviation Z-axis body acceleration jerk frequency
AverageOfFrequencyOfBodyAngularVelocity.Mean.X : Average over multiple observations of mean X-axis body angular velocity frequency
AverageOfFrequencyOfBodyAngularVelocity.Mean.Y : Average over multiple observations of mean Y-axis body angular velocity frequency
AverageOfFrequencyOfBodyAngularVelocity.Mean.Z : Average over multiple observations of mean Z-axis body angular velocity frequency
AverageOfFrequencyOfBodyAngularVelocity.Std.X : Average over multiple observations of standard deviation X-axis body angular velocity frequency
AverageOfFrequencyOfBodyAngularVelocity.Std.Y : Average over multiple observations of standard deviation Y-axis body angular velocity frequency
AverageOfFrequencyOfBodyAngularVelocity.Std.Z : Average over multiple observations of standard deviation Z-axis body angular velocity frequency
AverageOfFrequencyOfBodyAccelerationMagnitude.Mean : Average over multiple observations of mean body acceleration frequency magnitude
AverageOfFrequencyOfBodyAccelerationMagnitude.Std : Average over multiple observations of standard deviation body acceleration frequency magnitude
AverageOfFrequencyOfBodyBodyAccelerationJerkMagnitude.Mean : Average over multiple observations of mean body acceleration jerk frequency magnitude
AverageOfFrequencyOfBodyBodyAccelerationJerkMagnitude.Std : Average over multiple observations of standard deviation body acceleration jerk frequency magnitude
AverageOfFrequencyOfBodyBodyAngularVelocityMagnitude.Mean : Average over multiple observations of mean body angular velocity frequency magnitude
AverageOfFrequencyOfBodyBodyAngularVelocityMagnitude.Std : Average over multiple observations of standard deviation body angular velocity frequency magnitude
AverageOfFrequencyOfBodyBodyAngularVelocityJerkMagnitude.Mean : Average over multiple observations of mean body angular velocity jerk frequency magnitude
AverageOfFrequencyOfBodyBodyAngularVelocityJerkMagnitude.Std : Average over multiple observations of standard deviation body angular velocity jerk frequency magnitude