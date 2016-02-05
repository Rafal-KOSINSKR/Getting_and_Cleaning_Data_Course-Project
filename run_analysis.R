## The purpose of this script is to:
## 1 - merge the training and the test sets to create one data set.
## 2 - extract only the measurements on the mean and standard deviation for each measurement.
## 3 - use descriptive activity names to name the activities in the data set.
## 4 - appropriately label the data set with descriptive variable names.
## 5 - from the data set in step 4, create a second independent tidy data set with the average 
##     of each variable for each activity and each subject.


## Load measurement and activity labels
ftrs <- read.table("UCI HAR Dataset\\features.txt")
names(ftrs) <- c("Label", "Feature") #labels indicate column numbers in measurement data
albs <- read.table("UCI HAR Dataset\\activity_labels.txt")
names(albs) <- c("Label", "Activity")

## Load train and test data
subj_tr <- read.table("UCI HAR Dataset\\train\\subject_train.txt")
acti_tr <- read.table("UCI HAR Dataset\\train\\y_train.txt")
pars_tr <- read.table("UCI HAR Dataset\\train\\X_train.txt")
subj_te <- read.table("UCI HAR Dataset\\test\\subject_test.txt")
acti_te <- read.table("UCI HAR Dataset\\test\\y_test.txt")
pars_te <- read.table("UCI HAR Dataset\\test\\X_test.txt")

## Merge subject, activity, measurement data
subj <- rbind(subj_tr, subj_te)
acti <- rbind(acti_tr, acti_te)
pars <- rbind(pars_tr, pars_te)

## Find labels and names for the mean and standard deviation of the measurements
ftrs_m <- ftrs$Label[grep(".*[Mm][Ee][Aa][Nn].*", ftrs$Feature)]
ftrs_s <- ftrs$Label[grep(".*[Ss][Tt][Dd].*", ftrs$Feature)]
nms_m <- ftrs$Feature[ftrs_m]
nms_s <- ftrs$Feature[ftrs_s]

## Create descriptive names
dnms_m <- gsub("^t", "Time.", nms_m)
dnms_m <- gsub("^f", "Frequency.", dnms_m)
dnms_m <- gsub("\\(", ".", dnms_m)
dnms_m <- gsub("\\)", ".", dnms_m)
dnms_m <- gsub(",", ".", dnms_m)
dnms_m <- gsub("\\.\\.", ".", dnms_m)
dnms_m <- gsub("tBody", "Time.Body", dnms_m)
dnms_m <- gsub("\\.\\-", ".", dnms_m)
dnms_m <- gsub("\\-", ".", dnms_m)
dnms_s <- gsub("^t", "Time.", nms_s)
dnms_s <- gsub("^f", "Frequency.", dnms_s)
dnms_s <- gsub("\\(\\)", ".", dnms_s)
dnms_s <- gsub("\\.\\-", ".", dnms_s)
dnms_s <- gsub("\\-", ".", dnms_s)

## Extract data for the mean and standard deviation of the measurements
pars_m <- pars[,ftrs_m]
pars_s <- pars[,ftrs_s]

## Use measurement and activity names
names(pars_m) <- dnms_m
names(pars_s) <- dnms_s
names(acti) <- "ActLabel"
names(subj) <- "Subject"
acti_albs <- merge(acti, albs, by.x="ActLabel", by.y="Label", sort=FALSE)
acti2 <- data.frame(Activity=acti_albs$Activity)

## Create independent tidy data set
itds <- cbind(acti2, subj, pars_m, pars_s)
write.table(itds, file="X_itds.txt", row.names=FALSE)
require(dplyr)
byAS <- group_by(itds, Activity, Subject)
sum_byAS_avrg <- summarise_each_(byAS, funs(mean), names(byAS)[-(1:2)])
names(sum_byAS_avrg)[-c(1:2)] <- paste0("Avarage.for.", names(sum_byAS_avrg)[-c(1:2)])
write.table(sum_byAS_avrg, file="X_savrg.txt", row.names=FALSE)


