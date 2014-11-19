# Course Project - Getting and Cleaning Data 

The following variables are set from run_analysis.R for the source data "UCI HAR Dataset" from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. Please refer to README.md for additional details.

### Tidy_Unmelted_Data.txt

Column Name    | Variable Type  | Values | Description
 ------------- | -------------  | ------------- | ------------- 
 Subject_ID    | numeric        | 1:30  	     | Subject Id Numbers
 Activity_Name | factor         | WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING | Links the class labels with their activity name. (from: https://github.com/dholtz/GettingAndCleaningData/blob/master/project_data/activity_labels.txt)
**Features/Measures** | **numeric** | **Features/Measures are normalized and bounded within [-1,1].** | **Mean or standard deviation of the triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration**
tBodyAcc-mean()-X      |
tBodyAcc-mean()-Y |
tBodyAcc-mean()-Z |
tBodyAcc-std()-X |
tBodyAcc-std()-Y |
tBodyAcc-std()-Z |
tGravityAcc-mean()-X |
tGravityAcc-mean()-Y |
tGravityAcc-mean()-Z |
tGravityAcc-std()-X |
tGravityAcc-std()-Y |
tGravityAcc-std()-Z |
tBodyAccJerk-mean()-X |
tBodyAccJerk-mean()-Y |
tBodyAccJerk-mean()-Z |
tBodyAccJerk-std()-X |
tBodyAccJerk-std()-Y |
tBodyAccJerk-std()-Z |
tBodyGyro-mean()-X |
tBodyGyro-mean()-Y |
tBodyGyro-mean()-Z |
tBodyGyro-std()-X |
tBodyGyro-std()-Y |
tBodyGyro-std()-Z |
tBodyGyroJerk-mean()-X |
tBodyGyroJerk-mean()-Y |
tBodyGyroJerk-mean()-Z |
tBodyGyroJerk-std()-X |
tBodyGyroJerk-std()-Y |
tBodyGyroJerk-std()-Z |
tBodyAccMag-mean() |
tBodyAccMag-std() |
tGravityAccMag-mean() |
tGravityAccMag-std() |
tBodyAccJerkMag-mean() |
tBodyAccJerkMag-std() |
tBodyGyroMag-mean() |
tBodyGyroMag-std() |
tBodyGyroJerkMag-mean() |
tBodyGyroJerkMag-std() |
fBodyAcc-mean()-X |
fBodyAcc-mean()-Y |
fBodyAcc-mean()-Z |
fBodyAcc-std()-X |
fBodyAcc-std()-Y |
fBodyAcc-std()-Z |
fBodyAccJerk-mean()-X |
fBodyAccJerk-mean()-Y |
fBodyAccJerk-mean()-Z |
fBodyAccJerk-std()-X |
fBodyAccJerk-std()-Y |
fBodyAccJerk-std()-Z |
fBodyGyro-mean()-X |
fBodyGyro-mean()-Y |
fBodyGyro-mean()-Z |
fBodyGyro-std()-X |
fBodyGyro-std()-Y |
fBodyGyro-std()-Z |
fBodyAccMag-mean() |
fBodyAccMag-std() |
fBodyBodyAccJerkMag-mean() |
fBodyBodyAccJerkMag-std() |
fBodyBodyGyroMag-mean() |
fBodyBodyGyroMag-std() |
fBodyBodyGyroJerkMag-mean() |
fBodyBodyGyroJerkMag-std() |x 
