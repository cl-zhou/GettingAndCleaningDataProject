GettingAndCleaningDataProject
=============================

Course Project for Getting and Cleaning Data on Coursera

This project reshapes the [Human Activity Recognition Using Smartphones Dataset](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones ) into a tidy data set, with the average of each variable for each activity and each subject. 

This repository includes 3 files:
-'README.md': a general description of the data processing process.
-'run_analysis.R': the script used to reshape the data.
-'Codebook.md': a description of variables, data and transformations.

The data should be downloaded and unzipped into the working directory, in folder './UCR HAR Dataset'.
The files needed to load are:
./UCR HAR Dataset/train/x_train.txt: the training data set.
./UCR HAR Dataset/train/y_train.txt: activity labels for training data set.
./UCR HAR Dataset/test/x_test.txt: the testing data set.
./UCR HAR Dataset/test/y_test.txt: activity labels for testing data set.
./UCR HAR Dataset/train/subject_train.txt: the subject labels for training data set.
./UCR HAR Dataset/test/subject_test.txt: the subject labels for testing data set.
./UCR HAR Dataset/features.txt: the list of all features.
./UCR HAR Dataset/activity_labels.txt: the list of activities.

First, the training and testing data set are concatenated together to create a full data set. The activity labels and subject labels are also concatenated.
Then, filter out the features of mean and standard deviation for each measurement, and subset the full data set by this filtered list of features.
Then, append subject and activity data to the extracted data set, and replace the data labels with activity names.
Then, use the feature names to replace the variable names of the data set.
The last step is reshaping the data set into an independent tidy data set with the averages of each variable in the extracted data set for each activity and subject.




