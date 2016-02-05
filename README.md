## How script 'run_analysis.R' works.

# The purpose of this script is to:
# 1 - merge the training and the test sets to create one data set.
# 2 - extract only the measurements on the mean and standard deviation for each measurement.
# 3 - use descriptive activity names to name the activities in the data set.
# 4 - appropriately label the data set with descriptive variable names.
# 5 - from the data set in step 4, create a second independent tidy data set with the average of each variable for each activity and each subject.

# The steps are:

* Load measurement and activity labels from files 'features.txt' and 'activity_labels.txt' in catalog 'UCI HAR Dataset'

* Load train and test data for subject, activity and measurements

* Merge subject, activity and measurement data with function "rbind()"

* Find labels and names for the mean and standard deviation of the measurements using function "grep()"

* Create descriptive names using function "gsub()"

* Extract data for the mean and standard deviation of the measurements

* Use measurement and activity names in the data set

* Create independent tidy data set using functions "cbind()", "group_by()" and "summarise_each_()"

# For details see the code of the script.
