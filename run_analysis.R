#part1 
# Scan the training set and test set into R
set_train <- scan("train/X_train.txt")
set_test <- scan("test/X_test.txt")

# Convert the sets into matrices with 561 columns and rbind both matrices.
set_train <- matrix(set_train,ncol = 561, byrow = TRUE)
set_test <- matrix(set_test,ncol = 561, byrow = TRUE)
set_data <- rbind(set_train,set_test)

# Read the subject files for train and test data and rbind. 
subject_train <- read.csv("train/subject_train.txt",header = FALSE)
subject_test <- read.csv("test/subject_test.txt", header = FALSE)
subject <- rbind(subject_train,subject_test)

#Read the labels files for train and test and rbind.
labels_train <- read.csv("train/y_train.txt",header = FALSE)
labels_test <- read.csv("test/y_test.txt",header = FALSE)
labels <- rbind(labels_train, labels_test)

# get the features text and activity- labels text
features <- read.table("features.txt", header = FALSE)
activity <- read.table("activity_labels.txt", header = FALSE) 

# merge set_data, subject and labels into one data.frame and rename the variables.
dataset <- data.frame(subject, labels, set_data)
colnames(dataset) <- c("subject", "labels", as.character(features$V2))

#part2
# Select only the columns with the mean and standard deviation of each measurement using grep.
col_index1 <- grep("mean",colnames(dataset), value = FALSE)
col_index2 <- grep("std",colnames(dataset), value = FALSE)
col_index <- c(col_index1, col_index2)
dataset1 <- dataset[,c(1,2,col_index)]

#part3
#Use descriptive activity names to name the activities, by changing the labels column in dataset1 with their respective activities.
for(i in 1:length(activity$V2))
{dataset1$labels[dataset1$labels == activity$V1[i]] <- as.character(activity$V2[i])}
colnames(dataset1)[2] <- "activity"

#part4
# to use appropriate names for the columns in the dataset1.
colnames(dataset1) <- gsub("[^[:alnum:][:space:]-]", "", colnames(dataset1))
colnames(dataset1) <- gsub("[^[:alnum:][:space:]]", "_", colnames(dataset1))
colnames(dataset1) <- gsub("BodyBody", "Body", colnames(dataset1), fixed = FALSE)

#part5
#to find the average of each variable for each pair of subject and activity
library(dplyr)
dataset1 <- tbl_df(dataset1)
dataset2 <- group_by(dataset1, activity, subject) %>% summarise_each(funs(mean))

write.table(dataset2, "actdata.txt", row.names = FALSE)


