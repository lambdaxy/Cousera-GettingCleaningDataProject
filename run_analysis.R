library(dplyr)

# Download data if not already present in the working directory.
if (!file.exists("getdata-projectfiles-UCI HAR Dataset.zip")) {
  download.file(url = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
                destfile = "getdata-projectfiles-UCI HAR Dataset.zip")
}

unzip(zipfile = "getdata-projectfiles-UCI HAR Dataset.zip")

# Merge Training set and test set.
y_test = read.csv("UCI HAR Dataset/test/y_test.txt", header = FALSE)
X_test = read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE)

y_train = read.csv("UCI HAR Dataset/train/y_train.txt", header = FALSE)
X_train = read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE)

X_merged = rbind(X_test, X_train)
y_merged = rbind(y_test, y_train)

# Appropriately labels the data set with descriptive variable names
col_names = read.table("UCI HAR Dataset/features.txt")
colnames(X_merged) = col_names$V2
colnames(y_merged) = c("Activity")

# Uses descriptive activity names to name the activities in the data set
activity_names = read.table("UCI HAR Dataset/activity_labels.txt", stringsAsFactors = FALSE)
y_merged_named = transform(y_merged, name = activity_names$V2[Activity])
y_merged$Activity = y_merged_named$name

# Extract only Mean and SD for each measurement.
indices = grep(x = colnames(X_merged), pattern = ".+(-mean|-std)")
X_merged = X_merged[,indices]

# Merge the X and Y variables to form one data set
X_merged$Activity = y_merged$Activity

# Incorporate the subjects into the dataset
subject_test = read.csv("UCI HAR Dataset/test/subject_test.txt", header = FALSE)
subject_train = read.csv("UCI HAR Dataset/train/subject_train.txt", header = FALSE)
subject_merged = rbind(subject_test, subject_train)
X_merged$Subject = subject_merged$V1

# Output the tidy and merged data set produced to a csv file.
write.csv(X_merged, file = "merged_dataset.csv")

# Produce a second tidy data set that contains the average of each variable for each activity and each subject


# Clean-up unzipped data set after analysis to limit storage usage
unlink("UCI HAR Dataset", recursive=TRUE)
