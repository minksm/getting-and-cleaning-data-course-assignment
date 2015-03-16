require(plyr)

####### 1) Merges the training and the test sets to create one data set.######

# read text files
subject_test <- read.table("./test/subject_test.txt")
x_test <- read.table("./test/X_test.txt")
y_test <- read.table("./test/y_test.txt")

subject_train <- read.table("./train/subject_train.txt")
x_train <- read.table("./train/X_train.txt")
y_train <- read.table("./train/y_train.txt")

features <- read.table("./features.txt", colClasses = c("character"))
activity_labels <- read.table("activity_labels.txt")

# bind test data
test_data <- cbind(cbind(x_test, subject_test),y_test)

# bind train data
train_data <- cbind(cbind(x_train, subject_train),y_train)

# bind test and train data
combined_data <- rbind(test_data, train_data)

#label the columns
data_labels <- rbind(rbind(features, c(562, "Subject")), c(563, "ActivityID"))[,2]
names(combined_data) <- data_labels

####### 2) Extracts only the measurements on the mean and standard deviation for each measurement.######

combined_data_mean_std <- combined_data[,grepl("mean|std|Subject|ActivityID", names(combined_data))]

####### 3) Uses descriptive activity names to name the activities in the data set #######
colnames(activity_labels) <- c("ActivityID","Activity")
combined_data_mean_std <- join(combined_data_mean_std, activity_labels, by = "ActivityID", match = "first")
combined_data_mean_std <- combined_data_mean_std[,-1]

###### 4) Appropriately labels the data set with descriptive variable names. #######
names(combined_data_mean_std) <- gsub('[()-]',"",names(combined_data_mean_std))
names(combined_data_mean_std) <- gsub('BodyBody',"Body",names(combined_data_mean_std))
names(combined_data_mean_std) <- gsub('.mean',"Mean",names(combined_data_mean_std))
names(combined_data_mean_std) <- gsub('.std',"Std",names(combined_data_mean_std))


####### 5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. #######
tidy_data <- ddply(combined_data_mean_std,c("Subject", "Activity"),numcolwise(mean))
write.table(tidy_data, row.name = FALSE, file = "./tidydata.txt")


