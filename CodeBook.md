The initial variables used for the measurements of the subject's activities is a 561 feature vector with time and frequency domains. This feature vector is split into 561 columns and only the mean and standard deviation of any measurement is considered for the purpose of this project.

Variables used in this data:

1.  Subject: subject who performed the activity. varies from 1 to 30.
2.  Activity: Various activites that are recorded: WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING
3.  labels: numbers 1 to 6 to represent the activities mentioned above.
4.  Features: 561 measurements recorded using the samsung smart phone. Only 79 of these features are considered for this project. The names of these variables are modified, so as to remove any punctuations, duplicate names.
5.  set\_data: the dataset merged from train and test data.

The final tidy dataset has the following variables:

[1] "subject" "activity"
 [3] "tBodyAcc\_mean\_X" "tBodyAcc\_mean\_Y"
 [5] "tBodyAcc\_mean\_Z" "tGravityAcc\_mean\_X"
 [7] "tGravityAcc\_mean\_Y" "tGravityAcc\_mean\_Z"
 [9] "tBodyAccJerk\_mean\_X" "tBodyAccJerk\_mean\_Y"
[11] "tBodyAccJerk\_mean\_Z" "tBodyGyro\_mean\_X"
[13] "tBodyGyro\_mean\_Y" "tBodyGyro\_mean\_Z"
[15] "tBodyGyroJerk\_mean\_X" "tBodyGyroJerk\_mean\_Y"
[17] "tBodyGyroJerk\_mean\_Z" "tBodyAccMag\_mean"
[19] "tGravityAccMag\_mean" "tBodyAccJerkMag\_mean"
[21] "tBodyGyroMag\_mean" "tBodyGyroJerkMag\_mean"
[23] "fBodyAcc\_mean\_X" "fBodyAcc\_mean\_Y"
[25] "fBodyAcc\_mean\_Z" "fBodyAcc\_meanFreq\_X"
[27] "fBodyAcc\_meanFreq\_Y" "fBodyAcc\_meanFreq\_Z"
[29] "fBodyAccJerk\_mean\_X" "fBodyAccJerk\_mean\_Y"
[31] "fBodyAccJerk\_mean\_Z" "fBodyAccJerk\_meanFreq\_X"
[33] "fBodyAccJerk\_meanFreq\_Y" "fBodyAccJerk\_meanFreq\_Z"
[35] "fBodyGyro\_mean\_X" "fBodyGyro\_mean\_Y"
[37] "fBodyGyro\_mean\_Z" "fBodyGyro\_meanFreq\_X"
[39] "fBodyGyro\_meanFreq\_Y" "fBodyGyro\_meanFreq\_Z"
[41] "fBodyAccMag\_mean" "fBodyAccMag\_meanFreq"
[43] "fBodyAccJerkMag\_mean" "fBodyAccJerkMag\_meanFreq" [45] "fBodyGyroMag\_mean" "fBodyGyroMag\_meanFreq"
[47] "fBodyGyroJerkMag\_mean" "fBodyGyroJerkMag\_meanFreq" [49] "tBodyAcc\_std\_X" "tBodyAcc\_std\_Y"
[51] "tBodyAcc\_std\_Z" "tGravityAcc\_std\_X"
[53] "tGravityAcc\_std\_Y" "tGravityAcc\_std\_Z"
[55] "tBodyAccJerk\_std\_X" "tBodyAccJerk\_std\_Y"
[57] "tBodyAccJerk\_std\_Z" "tBodyGyro\_std\_X"
[59] "tBodyGyro\_std\_Y" "tBodyGyro\_std\_Z"
[61] "tBodyGyroJerk\_std\_X" "tBodyGyroJerk\_std\_Y"
[63] "tBodyGyroJerk\_std\_Z" "tBodyAccMag\_std"
[65] "tGravityAccMag\_std" "tBodyAccJerkMag\_std"
[67] "tBodyGyroMag\_std" "tBodyGyroJerkMag\_std"
[69] "fBodyAcc\_std\_X" "fBodyAcc\_std\_Y"
[71] "fBodyAcc\_std\_Z" "fBodyAccJerk\_std\_X"
[73] "fBodyAccJerk\_std\_Y" "fBodyAccJerk\_std\_Z"
[75] "fBodyGyro\_std\_X" "fBodyGyro\_std\_Y"
[77] "fBodyGyro\_std\_Z" "fBodyAccMag\_std"
[79] "fBodyAccJerkMag\_std" "fBodyGyroMag\_std"
[81] "fBodyGyroJerkMag\_std"
