There are 68 variables and 180 rows in the tidy data set.
each row corresponds to one subject performing one activity.

In the merging step, the training and tesing data sets are concatenated together using rbind function.
In the extraction step, all features with 'mean()' and 'std()' are selected. Features with 'meanFreq()' are removed because they are not simple mean measurements. 
Activity names are derived from activity_labels.txt.
Variable names are assigned based on feature names, with '()' removed. Some feature names repeated 'Body' 2 times. This is considered a typo and is corrected.
Creating the tidy data set is divided into 2 steps: melt the extracted data set, and calculate the average of each variable for each activity and each subject. The melting step is done through melt function, using activity and subject labels as id variables, and all the remaining variables as measured variables. In the rebuilding step, function dcast is used.

List of variables
Activity: the activity performed by the subject.
	LAYING, SITTING, STANDING, WALKING, WALKING DOWNSTAIRS, WALKING UPSTAIRS.
Subject: the label of the subject. 1 ... 30.

tBodyAcc-mean-X(Y,Z): the average of the mean of body acceleration in X(Y,Z) axis of the subject performing the activity.

tBodyAcc-std-X(Y,Z): the average of the standard deviation of body acceleration in X(Y,Z) axis of the subject performing the activity.

tGravityAcc-mean-X(Y,Z): the average of the mean of gravity acceleration in X(Y,Z) axis of the subject performing the activity.

tGravityAcc-std-X(Y,Z): the average of the standard deviation of gravity acceleration in X(Y,Z) axis of the subject performing the activity.

tBodyAccJerk-mean-X(Y,Z): the average of the mean of body jerk (rate of change of acceleration) in X(Y,Z) axis of the subject performing the activity.

tBodyAccJerk-std-X(Y,Z): the average of the standard deviation of body jerk (rate of change of acceleration) in X(Y,Z) axis of the subject performing the activity.

tBodyGyro-mean-X(Y,Z): the average of the mean of body angular acceleration in X(Y,Z) axis of the subject performing the activity.

tBodyGyro-std-X(Y,Z): the average of the standard deviation of body angular acceleration in X(Y,Z) axis of the subject performing the activity.

tBodyGyroJerk-mean-X(Y,Z): the average of the mean of body angular jerk (rage of change of angular acceleration) in X(Y,Z) axis of the subject performing the activity.

tBodyGyroJerk-std-X(Y,Z): the average of the standard variation of body angular jerk (rage of change of angular acceleration) in X(Y,Z) axis of the subject performing the activity.

tBodyAccMag-mean: the average of the mean of body acceleration magnitude under Euclidean norm.

tBodyAccMag-std: the average of the standard deviation of body acceleration magnitude under Euclidean norm.

tGravityAccMag-mean: the average of the mean of gravity acceleration magnitude under Euclidean norm.

tGravityAccMag-std: the average of the standard deviation of gravity acceleration magnitude under Euclidean norm.

tBodyAccJerkMag-mean: the average of the mean of body jerk magnitude under Euclidean norm.

tBodyAccJerkMag-std: the average of the standard deviation of body jerk magnitude under Euclidean norm.

tBodyGyroMag-mean: the average of the mean of body angular acceleration magnitude under Euclidean norm.

tBodyGyroMag-std: the average of the standard deviation of body angular acceleration magnitude under Euclidean norm.

tBodyGyroJerkMag-mean: the average of the mean of body angular jerk magnitude under Euclidean norm.

tBodyGyroJerkMag-std: the average of the standard deviation of body angular jerk magnitude under Euclidean norm.

fBodyAcc-mean-X(Y,Z): the average of the mean of body acceleration signal after Fast Fourier Transform in X(Y,Z) axis of the subject performing the activity.

fBodyAcc-std-X(Y,Z): the average of the standard deviation of body acceleration signal after Fast Fourier Transform in X(Y,Z) axis of the subject performing the activity.

fBodyAccJerk-mean-X(Y,Z): the average of the mean of derivative of body acceleration signal after Fast Fourier Transform in X(Y,Z) axis of the subject performing the activity.
 
fBodyAccJerk-std-X(Y,Z): the average of the standard deviation of derivative of body acceleration signal after Fast Fourier Transform in X(Y,Z) axis of the subject performing the activity.

fBodyGyro-mean-X(Y,Z): the average of the mean of body angular acceleration signal after Fast Fourier Transform in X(Y,Z) axis of the subject performing the activity.

fBodyGyro-std-X(Y,Z): the average of the standard deviation of body angular acceleration signal after Fast Fourier Transform in X(Y,Z) axis of the subject performing the activity.

fBodyAccMag-mean: the average of the mean of body acceleration magnitude after Fast Fourier Transform under Euclidean norm.

fBodyAccMag-std: the average of the standard deviation of body acceleration magnitude after Fast Fourier Transform under Euclidean norm.

tBodyAccJerkMag-mean: the average of the mean of body jerk magnitude after Fast Fourier Transform under Euclidean norm.

tBodyAccJerkMag-std: the average of the standard deviation of body jerk magnitude after Fast Fourier Transform under Euclidean norm.

tBodyGyroMag-mean: the average of the mean of body angular acceleration magnitude after Fast Fourier Transform under Euclidean norm.
 
tBodyGyroMag-std: the average of the standard deviation of body angular acceleration magnitude after Fast Fourier Transform under Euclidean norm.
 
tBodyGyroJerkMag-mean: the average of the mean of body angular jerk magnitude after Fast Fourier Transform under Euclidean norm.
 
tBodyGyroJerkMag-std: the average of the standard deviation of body angular jerk magnitude after Fast Fourier Transform under Euclidean norm.



