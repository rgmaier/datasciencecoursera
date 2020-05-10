## The underlying data ##

This analysis is based on a sample dataset provided by the lecturers of the class (see README), which is based on a data set on Human Activity Recognition, provided by UCI (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The data has been provided as multiple, separate text files in various formats (incl. comma-separated and fixed-with). The underlying data has not been altered and has been used as is.

## The process ##

1. As the script requires a dplyr command, the script ensures that dplyr is installed and loaded. If not, it will be installed.

2. All files are loaded to memory. Depending on the underlying format, the script reads a CSV-file or a fixed-with file.

3. Once read, the script combines the "Train" and "Test" sets vertically in order to have a single dataframe.

4. Next, the scripts merges the data sets in order to identify the activity ID

5. Afterwards, the script obtains only the columns referring to mean and standard deviation as required by the course.

6. Lastly, a separate copy of the cleaned data is created, which is then aggregated by activity and subject to have the mean for each column as required by step 5 of the instructions.

## The data book ##

The dataframe "data" contains the same values as described below; however, at this stage they have not been aggregated and are the actual observed values. 

Dataframe: step 5

 "Activity"                   Activity according to the underlying data frame in several groups (STANDING, SITTING, WALKING_DOWNSTAIRS, LAYING, WALKING_UPSTAIRS)
 
 "Subject"                    Integer indicating the person who completed the activity (1-30)
 
 "tBodyAcc-mean()-X"          Mean of the column by the two groups (DOUBLE)
 
 "tBodyAcc-mean()-Y"          Mean of the column by the two groups (DOUBLE) 
 
 "tBodyAcc-mean()-Z"          Mean of the column by the two groups (DOUBLE)
 
 "tGravityAcc-mean()-X"       Mean of the column by the two groups (DOUBLE)
 
 "tGravityAcc-mean()-Y"       Mean of the column by the two groups (DOUBLE)
 
 "tGravityAcc-mean()-Z"       Mean of the column by the two groups (DOUBLE)
 
 "tBodyAccJerk-mean()-X"      Mean of the column by the two groups (DOUBLE)
 
 "tBodyAccJerk-mean()-Y"      Mean of the column by the two groups (DOUBLE)
 
 "tBodyAccJerk-mean()-Z"      Mean of the column by the two groups (DOUBLE)
 
 "tBodyGyro-mean()-X"         Mean of the column by the two groups (DOUBLE)
 
 "tBodyGyro-mean()-Y"         Mean of the column by the two groups (DOUBLE)
 
 "tBodyGyro-mean()-Z"         Mean of the column by the two groups (DOUBLE)
 
 "tBodyGyroJerk-mean()-X"     Mean of the column by the two groups (DOUBLE)
 
 "tBodyGyroJerk-mean()-Y"     Mean of the column by the two groups (DOUBLE)
 
 "tBodyGyroJerk-mean()-Z"     Mean of the column by the two groups (DOUBLE)
 
 "tBodyAccMag-mean()"         Mean of the column by the two groups (DOUBLE)
 
 "tGravityAccMag-mean()"      Mean of the column by the two groups (DOUBLE)
 
 "tBodyAccJerkMag-mean()"     Mean of the column by the two groups (DOUBLE)
 
 "tBodyGyroMag-mean()"        Mean of the column by the two groups (DOUBLE)
 
 "tBodyGyroJerkMag-mean()"    Mean of the column by the two groups (DOUBLE)
 
 "fBodyAcc-mean()-X"          Mean of the column by the two groups (DOUBLE)
 
 "fBodyAcc-mean()-Y"          Mean of the column by the two groups (DOUBLE)
 
 "fBodyAcc-mean()-Z"          Mean of the column by the two groups (DOUBLE)
 
 "fBodyAccJerk-mean()-X"      Mean of the column by the two groups (DOUBLE)
 
 "fBodyAccJerk-mean()-Y"      Mean of the column by the two groups (DOUBLE)
 
 "fBodyAccJerk-mean()-Z"      Mean of the column by the two groups (DOUBLE)
 
 "fBodyGyro-mean()-X"         Mean of the column by the two groups (DOUBLE)
 
 "fBodyGyro-mean()-Y"         Mean of the column by the two groups (DOUBLE)
 
 "fBodyGyro-mean()-Z"         Mean of the column by the two groups (DOUBLE)
 
 "fBodyAccMag-mean()"         Mean of the column by the two groups (DOUBLE)
 
 "fBodyBodyAccJerkMag-mean()" Mean of the column by the two groups (DOUBLE)
 
 "fBodyBodyGyroMag-mean()"    Mean of the column by the two groups (DOUBLE)
 
 "fBodyBodyGyroJerkMag-mean()"Mean of the column by the two groups (DOUBLE)
 
 "tBodyAcc-std()-X"           Mean of the column by the two groups (DOUBLE)
 
 "tBodyAcc-std()-Y"           Mean of the column by the two groups (DOUBLE)
 
 "tBodyAcc-std()-Z"           Mean of the column by the two groups (DOUBLE)
 
 "tGravityAcc-std()-X"        Mean of the column by the two groups (DOUBLE)
 
 "tGravityAcc-std()-Y"        Mean of the column by the two groups (DOUBLE)
 
 "tGravityAcc-std()-Z"        Mean of the column by the two groups (DOUBLE)
 
 "tBodyAccJerk-std()-X"       Mean of the column by the two groups (DOUBLE)
 
 "tBodyAccJerk-std()-Y"       Mean of the column by the two groups (DOUBLE)
 
 "tBodyAccJerk-std()-Z"       Mean of the column by the two groups (DOUBLE)
 
 "tBodyGyro-std()-X"          Mean of the column by the two groups (DOUBLE)
 
 "tBodyGyro-std()-Y"          Mean of the column by the two groups (DOUBLE)
 
 "tBodyGyro-std()-Z"          Mean of the column by the two groups (DOUBLE)
 
 "tBodyGyroJerk-std()-X"      Mean of the column by the two groups (DOUBLE)
 
 "tBodyGyroJerk-std()-Y"      Mean of the column by the two groups (DOUBLE)
 
 "tBodyGyroJerk-std()-Z"      Mean of the column by the two groups (DOUBLE)
 
 "tBodyAccMag-std()"          Mean of the column by the two groups (DOUBLE)
 
 "tGravityAccMag-std()"       Mean of the column by the two groups (DOUBLE)
 
 "tBodyAccJerkMag-std()"      Mean of the column by the two groups (DOUBLE)
 
 "tBodyGyroMag-std()"         Mean of the column by the two groups (DOUBLE)
 
 "tBodyGyroJerkMag-std()"     Mean of the column by the two groups (DOUBLE)
 
 "fBodyAcc-std()-X"           Mean of the column by the two groups (DOUBLE)
 
 "fBodyAcc-std()-Y"           Mean of the column by the two groups (DOUBLE)
 
 "fBodyAcc-std()-Z"           Mean of the column by the two groups (DOUBLE)
 
 "fBodyAccJerk-std()-X"       Mean of the column by the two groups (DOUBLE)
 
 "fBodyAccJerk-std()-Y"       Mean of the column by the two groups (DOUBLE)
 
 "fBodyAccJerk-std()-Z"       Mean of the column by the two groups (DOUBLE)
 
 "fBodyGyro-std()-X"          Mean of the column by the two groups (DOUBLE)
 
 "fBodyGyro-std()-Y"          Mean of the column by the two groups (DOUBLE)
 
 "fBodyGyro-std()-Z"          Mean of the column by the two groups (DOUBLE)
 
 "fBodyAccMag-std()"          Mean of the column by the two groups (DOUBLE)
 
 "fBodyBodyAccJerkMag-std()"  Mean of the column by the two groups (DOUBLE)
 
 "fBodyBodyGyroMag-std()"     Mean of the column by the two groups (DOUBLE)
 
 "fBodyBodyGyroJerkMag-std()" Mean of the column by the two groups (DOUBLE)