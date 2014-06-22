#load the data needed
x_train <- read.table('./UCI HAR Dataset/train/x_train.txt')
y_train <- read.table('./UCI HAR Dataset/train/y_train.txt')
x_test <- read.table('./UCI HAR Dataset/test/x_test.txt')
y_test <- read.table('./UCI HAR Dataset/test/y_test.txt')
subject_train <- read.table('./UCI HAR Dataset/train/subject_train.txt')
subject_test <- read.table('./UCI HAR Dataset/test/subject_test.txt')
features <- read.table('./UCI HAR Dataset/features.txt')
activity_labels <- read.table('./UCI HAR Dataset/activity_labels.txt')

#merge train and test data sets
x_data <- rbind(x_train, x_test)
y_data <- rbind(y_train, y_test)

#extract the measurements on mean and standard deviations
feature_index <- c(setdiff(grep('mean', features[,2]), grep('meanFreq()', features[,2])), grep('std', features[,2]))
feature_index <- sort(feature_index)
x_extracted <- x_data[,feature_index]

#append subject and activity data to the extracted data set
subject <- rbind(subject_train, subject_test)
x_extracted$activity <- unlist(y_data)
x_extracted$subject <- unlist(subject)

#use activity names to name the activity variable
x_extracted$activity <- activity_labels[,2][unlist(x_extracted$activity)]

#label the data set with descriptive feature names
features_to_keep <- features[feature_index, 2]
features_to_keep <- gsub('[()]','',features_to_keep)
features_to_keep <- gsub('BodyBody', 'Body', features_to_keep)
features_all <- c(features_to_keep,'activity','subject')
colnames(x_extracted) <- features_all

#melt and reshape the data into a new tidy data set
x_melt <- melt(x_extracted, id = c('activity','subject'), measure.vars = features_to_keep)
x_mean <- dcast(x_melt, activity + subject ~ variable,mean)

#export the tidy data set


