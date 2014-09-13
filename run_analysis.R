# read training and test datasets
X_train <- read.table("train/X_train.txt")
X_test <- read.table("test/X_test.txt")
y_train <- read.table("train/y_train.txt")
y_test <- read.table("test/y_test.txt")
subject_train <- read.table("train/subject_train.txt")
subject_test <- read.table("test/subject_test.txt")

# read mapping data
features <- read.table("features.txt")[,2]
activity_labels <- read.table("activity_labels.txt")[,2]

# merge training and test data
X <- rbind(X_train, X_test)
y <- rbind(y_train, y_test)
subject <- rbind(subject_train, subject_test)

# extract only measurements on mean and standard deviation
featureIndex <- grep("mean\\(|std", features)

# label data set with descriptive variable names
features <- gsub("^f", "Freq", features)
features <- gsub("^t", "Time", features)
features <- gsub("-mean\\(\\)", "Mean", features)
features <- gsub("-std\\(\\)", "Std", features)
features <- gsub("BodyBody", "Body", features)
features <- gsub("-", "", features)

# label data set with descriptive activity names
y[,1] <- activity_labels[y[,1]]

# merge all available datasets and set the column names
data <- cbind(Subject = subject, Activity = y, X[,featureIndex])
names(data) <- c("Subject", "Activity", features[featureIndex])

# obtain average of each variable for each activity and each subject
meanData <- aggregate(.~Subject+Activity, data=data, mean)

# write meanData to file
write.table(meanData, file="meanData.txt", row.names=FALSE)