# About the code:
# This code reads the data collected from the accelerometers from the Samsung Galaxy S smartphone for the UCI data 
# repository, extracts only the measurements on the mean and standard deviation, and creates a second, independent 
# tidy data set with the average of each variable for each activity and each subject

# For the graders:
# Requirement 1: line 36
# Requirement 2: line 42
# Requirement 3: line 49
# Requirement 4: line 20 and 25
# Requirement 5: line 55 and 58

# Load the plyr package
library(plyr)

# Read the feature names
features <- read.table("data//UCI_HAR_Dataset/features.txt", stringsAsFactors = FALSE, col.names=c("id","name"))

# Read the test data (use the feature names to name the columns of measurements)
testData <- read.table("data//UCI_HAR_Dataset/test/X_test.txt", col.names=features$name)
testLabel <- read.table("data//UCI_HAR_Dataset/test/Y_test.txt", col.names="Label")
testSubject <- read.table("data//UCI_HAR_Dataset/test/subject_test.txt", col.names="Subject")

# Read the train data (use the feature names to name the columns of measurements)
trainData <- read.table("data//UCI_HAR_Dataset/train/X_train.txt", col.names=features$name)
trainLabel <- read.table("data//UCI_HAR_Dataset/train/Y_train.txt", col.names="Label")
trainSubject <- read.table("data//UCI_HAR_Dataset/train/subject_train.txt", col.names="Subject")

# Add labels and subjects to the data frames.
testData <- cbind(testData,testLabel)
testData <- cbind(testData,testSubject)
trainData <- cbind(trainData,trainLabel)
trainData <- cbind(trainData,trainSubject)

# Merge the data frames by row binding.
mergedData <- rbind(trainData,testData)

# Remove the data frames that are no longer needed.
remove(features, testData, testLabel, testSubject, trainData, trainLabel, trainSubject)

# Extract the measurements on mean and standard deviation by greping throught the column names
cleanData <- mergedData[,grep("mean|std|Subject|Label",colnames(mergedData))]
remove(mergedData)

# Read the names of activities
activities <- read.table("data/UCI_HAR_Dataset/activity_labels.txt", stringsAsFactors = FALSE, col.names=c("id","activity"))

# Create a column of descriptive activity names in the data frame 
cleanData$Activity <- activities$activity[cleanData$Label]
cleanData$Label <- NULL
remove(activities)

# Create a second data frame which includes the mean for each variable for every possible (subject, activeity) pair
# Use the colwise option of the ddply function
finalData <- ddply(cleanData, c("Subject","Activity"), colwise(mean))

# Write the tidy data to a file
write.table(finalData, file="data/tidy.txt", row.names=FALSE)