unzip(zipfile = "getdata-projectfiles-UCI HAR Dataset.zip")

# Merge Training set and test set.
y_test = read.csv("UCI HAR Dataset/test/y_test.txt", header = FALSE)
X_test = read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE)

y_train = read.csv("UCI HAR Dataset/train/y_train.txt", header = FALSE)
X_train = read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE)

X_merged = 
y_merged = 
