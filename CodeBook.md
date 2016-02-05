## Code Book for the manipulated data

# File 'X_itds.txt' contains data resulting from the data collected by the accelerometers with the Samsung Galaxy S smartphone. 
# A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
# And the original data is:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

# The data manipulation approach is described in README.md.

# The data in file 'X_itds.txt' are:

*	Activity
*	Subject
*	Avarage.for.Time.BodyAcc.mean.X
*	Avarage.for.Time.BodyAcc.mean.Y
*	Avarage.for.Time.BodyAcc.mean.Z
*	Avarage.for.Time.GravityAcc.mean.X
*	Avarage.for.Time.GravityAcc.mean.Y
*	Avarage.for.Time.GravityAcc.mean.Z
*	Avarage.for.Time.BodyAccJerk.mean.X
*	Avarage.for.Time.BodyAccJerk.mean.Y
*	Avarage.for.Time.BodyAccJerk.mean.Z
*	Avarage.for.Time.BodyGyro.mean.X
*	Avarage.for.Time.BodyGyro.mean.Y
*	Avarage.for.Time.BodyGyro.mean.Z
*	Avarage.for.Time.BodyGyroJerk.mean.X
*	Avarage.for.Time.BodyGyroJerk.mean.Y
*	Avarage.for.Time.BodyGyroJerk.mean.Z
*	Avarage.for.Time.BodyAccMag.mean.
*	Avarage.for.Time.GravityAccMag.mean.
*	Avarage.for.Time.BodyAccJerkMag.mean.
*	Avarage.for.Time.BodyGyroMag.mean.
*	Avarage.for.Time.BodyGyroJerkMag.mean.
*	Avarage.for.Frequency.BodyAcc.mean.X
*	Avarage.for.Frequency.BodyAcc.mean.Y
*	Avarage.for.Frequency.BodyAcc.mean.Z
*	Avarage.for.Frequency.BodyAcc.meanFreq.X
*	Avarage.for.Frequency.BodyAcc.meanFreq.Y
*	Avarage.for.Frequency.BodyAcc.meanFreq.Z
*	Avarage.for.Frequency.BodyAccJerk.mean.X
*	Avarage.for.Frequency.BodyAccJerk.mean.Y
*	Avarage.for.Frequency.BodyAccJerk.mean.Z
*	Avarage.for.Frequency.BodyAccJerk.meanFreq.X
*	Avarage.for.Frequency.BodyAccJerk.meanFreq.Y
*	Avarage.for.Frequency.BodyAccJerk.meanFreq.Z
*	Avarage.for.Frequency.BodyGyro.mean.X
*	Avarage.for.Frequency.BodyGyro.mean.Y
*	Avarage.for.Frequency.BodyGyro.mean.Z
*	Avarage.for.Frequency.BodyGyro.meanFreq.X
*	Avarage.for.Frequency.BodyGyro.meanFreq.Y
*	Avarage.for.Frequency.BodyGyro.meanFreq.Z
*	Avarage.for.Frequency.BodyAccMag.mean.
*	Avarage.for.Frequency.BodyAccMag.meanFreq.
*	Avarage.for.Frequency.BodyBodyAccJerkMag.mean.
*	Avarage.for.Frequency.BodyBodyAccJerkMag.meanFreq.
*	Avarage.for.Frequency.BodyBodyGyroMag.mean.
*	Avarage.for.Frequency.BodyBodyGyroMag.meanFreq.
*	Avarage.for.Frequency.BodyBodyGyroJerkMag.mean.
*	Avarage.for.Frequency.BodyBodyGyroJerkMag.meanFreq.
*	Avarage.for.angle.Time.BodyAccMean.gravity.
*	Avarage.for.angle.Time.BodyAccJerkMean.gravityMean.
*	Avarage.for.angle.Time.BodyGyroMean.gravityMean.
*	Avarage.for.angle.Time.BodyGyroJerkMean.gravityMean.
*	Avarage.for.angle.X.gravityMean.
*	Avarage.for.angle.Y.gravityMean.
*	Avarage.for.angle.Z.gravityMean.
*	Avarage.for.Time.BodyAcc.std.X
*	Avarage.for.Time.BodyAcc.std.Y
*	Avarage.for.Time.BodyAcc.std.Z
*	Avarage.for.Time.GravityAcc.std.X
*	Avarage.for.Time.GravityAcc.std.Y
*	Avarage.for.Time.GravityAcc.std.Z
*	Avarage.for.Time.BodyAccJerk.std.X
*	Avarage.for.Time.BodyAccJerk.std.Y
*	Avarage.for.Time.BodyAccJerk.std.Z
*	Avarage.for.Time.BodyGyro.std.X
*	Avarage.for.Time.BodyGyro.std.Y
*	Avarage.for.Time.BodyGyro.std.Z
*	Avarage.for.Time.BodyGyroJerk.std.X
*	Avarage.for.Time.BodyGyroJerk.std.Y
*	Avarage.for.Time.BodyGyroJerk.std.Z
*	Avarage.for.Time.BodyAccMag.std.
*	Avarage.for.Time.GravityAccMag.std.
*	Avarage.for.Time.BodyAccJerkMag.std.
*	Avarage.for.Time.BodyGyroMag.std.
*	Avarage.for.Time.BodyGyroJerkMag.std.
*	Avarage.for.Frequency.BodyAcc.std.X
*	Avarage.for.Frequency.BodyAcc.std.Y
*	Avarage.for.Frequency.BodyAcc.std.Z
*	Avarage.for.Frequency.BodyAccJerk.std.X
*	Avarage.for.Frequency.BodyAccJerk.std.Y
*	Avarage.for.Frequency.BodyAccJerk.std.Z
*	Avarage.for.Frequency.BodyGyro.std.X
*	Avarage.for.Frequency.BodyGyro.std.Y
*	Avarage.for.Frequency.BodyGyro.std.Z
*	Avarage.for.Frequency.BodyAccMag.std.
*	Avarage.for.Frequency.BodyBodyAccJerkMag.std.
*	Avarage.for.Frequency.BodyBodyGyroMag.std.
*	Avarage.for.Frequency.BodyBodyGyroJerkMag.std.
