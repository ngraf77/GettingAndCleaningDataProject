# Change to directory contaiing the dat set
setwd("UCI HAR Dataset")

# Load dplyr and data.table packages
library(dplyr)
library(data.table)

# Load feature labels and select mean and standard deviation measurements
featureLabels <- read.table("features.txt", sep=" ")
cols <- grep("mean\\(\\)|std\\(\\)", featureLabels$V2)
colLabels <- as.character(featureLabels[cols,]$V2)

# Clean up column labels
colLabels <- sub("\\(\\)","",colLabels)
colLabels <- gsub("-",".",colLabels)
colLabels <- sub("mean","Mean",colLabels)
colLabels <- sub("std","Std",colLabels)
colLabels <- sub("Acc","Acceleration",colLabels)
colLabels <- sub("Mag","Magnitude",colLabels)
colLabels <- sub("^t","",colLabels)
colLabels <- sub("^f","FrequencyOf",colLabels)
colLabels <- sub("Gyro","AngularVelocity",colLabels)

# Load and combine test data set
testMeas <- fread("test/X_test.txt", select = cols, col.names = colLabels)
testSubjects <- fread("test/subject_test.txt", col.names = "Subject")
testActivities <- fread("test/y_test.txt", col.names = "Activity")
testData <- data.frame(testSubjects,testActivities,testMeas)

# Load and combine training data set
trainMeas <- fread("train/X_train.txt", select = cols, col.names = colLabels)
trainSubjects <- fread("train/subject_train.txt", col.names = "Subject")
trainActivities <- fread("train/y_train.txt", col.names = "Activity")
trainData <- data.frame(trainSubjects,trainActivities,trainMeas)

# Combine test and training data sets
allData <- rbind(testData,trainData)

# Set descriptive activity labels
activityLabels <- fread("activity_labels.txt", col.names = c("Index","Name"))
for (i in seq_len(nrow(activityLabels))) { 
    allData$Activity[allData$Activity == i] <- activityLabels[i]$Name
}

# Use the dplyr package to group the data by Subject and Activity and get the mean of each column
dataSum <- summarize_each(group_by(allData, Subject, Activity), funs(mean))

# Change column names to indicate that data has been averaged over several trials
newColLabels <- sub("^","AverageOf",colLabels)
names(dataSum) <- c("Subject", "Activity", newColLabels)

# Write summary data set to file
write.table(dataSum, file="AccelerometerDataSummary.txt", row.name = FALSE)
