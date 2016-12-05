library(data.table)
library(plyr)

## set the directory
setwd('C:/Users/Jae/Desktop/JHU - Data Science/3 _ Getting and Cleaning Data/Week4')

path <- getwd()

## create a directory if it does not exist
if (!file.exists(path)) {
      dir.create(path)
}

## url address
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

## download the zip file
download.file(url, destfile="./project/Dataset.zip")

## extract the zip file
unzip(zipfile="./project/Dataset.zip",exdir="./project")

## set folder and files
folder <- file.path('./project', 'UCI HAR Dataset')
files <- list.files(folder, recursive = TRUE)

## read files
# test data
subject_test <- read.table(file.path(folder, 'test', 'subject_test.txt'), header = FALSE)
x_test <- read.table(file.path(folder, 'test', 'X_test.txt'), header = FALSE)
y_test <- read.table(file.path(folder, 'test', 'y_test.txt'), header = FALSE)

# train data
subject_train <- read.table(file.path(folder, 'train', 'subject_train.txt'), header = FALSE)
x_train <- read.table(file.path(folder, 'train', 'X_train.txt'), header = FALSE)
y_train <- read.table(file.path(folder, 'train', 'y_train.txt'), header = FALSE)

# features and activity
features <- read.table(file.path(folder, 'features.txt'))
activity <- read.table(file.path(folder, 'activity_labels.txt'))

## merge the data
X <- rbind(x_test, x_train)
Y <- rbind(y_test, y_train)
subject <- rbind(subject_test, subject_train)

# select indeces that only contain mean() and std()
index <- grep("(mean|std)\\(\\)", features$V2)

# reset the data with the selected indeces
X <- X[,index]
Y[,1] <- activity[Y[,1], 2]

# name each column
names(Y) <- 'Activity'
names(subject) <- 'Subject'
names(X) <- features[index,2]

# combine the data
data <- cbind(subject, Y, X)

## tidy data
# make it data table
data <- data.table(data)

tidydata <- data[, lapply(.SD, mean), by = c('Subject', 'Activity')]
sorted_data <- tidydata[order(tidydata$Subject, tidydata$Activity), ]

## write a tidy data as a table
write.table(sorted_data, file = "./project/TidyDataSet.txt", row.names = FALSE)
write.csv(sorted_data, file = "./project/TidyDataSet.csv", row.names = FALSE)


### Full name of the features
var <- names(sorted_data)
var <- gsub('Acc',"Accelerometer",var)
var <- gsub('Gyro', 'Gyroscope', var)
var <- gsub('^t', 'Time', var)
var <- gsub('^f', 'Frequency', var)
var <- gsub('BodyBody', 'Body', var)
var <- gsub('Mag', "Magnitude", var)
var <- gsub('mean\\(\\)', 'Mean\\', var)
var <- gsub('std\\(\\)', 'StandardDeviation', var)
var <- gsub("([a-z])([A-Z])", "\\1 \\2", var)
var <- gsub('-', ' - ', var)
