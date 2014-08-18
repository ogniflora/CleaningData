#### Prepare tidy data
### Step 1- Merge the training and the test sets to create one data set.
### Step 2- Extract the measurements on the mean and standard deviation for each measurement. 
### Step 3- Use descriptive activity names to name the activities in the data set.
### Step 4- Labels the data set with descriptive variable names. 
### Step 5- Creates a second, independent tidy data set with the average of 
###         each variable for each activity and each subject.

## Download and unzip the data set if it has not already been done
if (!file.exists("data-course-project.zip")) {
    download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "data-course-project.zip", method = "curl")
    unzip("data-course-project.zip")
}


## Step 1- Merge the training and the test sets to create one data set

## Test data set and Training data set

    measurements <- read.table("features.txt") ## Names of the columns
    
    ## I use check.names=FALSE for avoiding problems with characters like ()
    test_table <- read.table("UCI HAR Dataset/test/X_test.txt", 
                         col.names = measurements[, 2], check.names=FALSE) 

    train_table <- read.table("UCI HAR Dataset/train/X_train.txt", 
                          col.names = measurements[, 2], check.names=FALSE)

## Final merging: nrow=10299, ncol=type of measurements=561

    data <- rbind(test_table, train_table)


## Step 2- Extract the measurements on the mean and std for each measurement
## I'll call this data frame 'df' - dim = 10299 88

v.names <- c('mean', 'std')
pattern <- sub(',\\s','|', (toString(v.names))) # that is, pattern = mean|std
l_colnames <- tolower(colnames(data)) 
id.group <- grepl(pattern, l_colnames) # logical vector
df <- data[, id.group]

## Subjects and Activities: I'll use these as I and II column respectively

test_activity <- read.table("UCI HAR Dataset//test//y_test.txt")
train_activity <- read.table("UCI HAR Dataset//train//y_train.txt")

activity <- rbind(test_activity, train_activity)

test_sub <- read.table("UCI HAR Dataset//test//subject_test.txt")
train_sub <- read.table("UCI HAR Dataset//train//subject_train.txt")

sub <- rbind(test_sub, train_sub)

df <- cbind(activity, df)
df <- cbind(sub, df)


## Step 3- Use descriptive activity names to name the activities in the data set
## The corresponance number-activity is in the file activity_labels.txt

df[ ,2] <- as.numeric(df[ ,2])
df[ ,2] <- gsub(1, "WALKING", df[, 2])
df[ ,2] <- gsub(2, "WALKING_UPSTAIRS", df[, 2])
df[ ,2] <- gsub(3, "WALKING_DOWNSTAIRS", df[, 2])
df[ ,2] <- gsub(4, "SITTING", df[, 2])
df[ ,2] <- gsub(5, "STANDING", df[, 2])
df[ ,2] <- gsub(6, "LAYING", df[, 2])


## Step 4- Label the data set with descriptive variable names:

## Partially done in Step I, where I create the data frames test_table and train_table.
## I assigned the names to the columns in the read.table function using
## "col.names = measurements[, 2]" and I suppressed the 
## 'checking for correct variable names' specifing 'check.names=FALSE'
## Now I have to assign a name just to the first two columns: Subject and Activity

colnames(df)[1] <- "Subject"
colnames(df)[2] <- "Activity"


## Step 5- tidy data set with the average of each variable 
##          for each activity and each subject

tidy <- ddply(df, .(Subject, Activity), numcolwise(mean))

write.table(tidy, file = "run_analysis.txt", row.name=FALSE)
