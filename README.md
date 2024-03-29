## How the script run_analysis.R and final.R work  

### run_analysis.R
  
  
#### 1. Aim of the script

Given the row data provided at the URL https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip, the script prepares two tidy data sets according to the istruction described at point 3. 

#### 2. Description of the row data

The files contained in the zip folder that are used by the script are:

a. features.txt: type of measurement performed (561)
b. activity_labels.txt: it links the class labels with their activity name
c. train/X_train.txt: Training data set
d. test/X_test.txt: Test data set
e. train/y_train.txt: Training labels (numbers from 1 to 6)
f. test/y_test.txt: Test labels (numbers from 1 to 6)
g. train/subject_train.txt: Each row identifies the subject who performed the activity. Its range is from 1 to 30.
h. test/subject_test.txt: Each row identifies the subject who performed the activity. Its range is from 1 to 30. 

#### 3. What the script does

**Step 1- Merges the training and the test sets to create one data set.**

* It downloads and performs unzip on the data set provided at the URL if it has not already been done.
    
* It reads the files X_test.txt and X_train.txt as tables and it uses the activities listed in features.txt as names for the columns, then it combines the two tables by rows. The obtained data frame, 'data', has 10299 rows and 561 columns.
    
**Step 2- Extracts only the measurements on the mean and standard deviation for each measurement.** 

* It extracts from the data set 'data' all the columns that contain the word 'mean' or 'Mean' or 'std'. The resulting data frame is calles 'df' and it has 88 columns.
    
* Two new columns are added by cbind: Subject, Activity. For the first it is used the combination of the data frames subject_test.txt and subject_train.txt, for the last y_test.txt and y_train.txt.

**Step 3- Uses descriptive activity names to name the activities in the data set.**

* The correspondence between number and activity is known from the file activity_labels.txt. The script uses the *gsub* function for performing the substitution of the number with the activity.

**Step 4- Appropriately labels the data set with descriptive variable names.**

* Partially done in Step I, where I create the data frames test_table and train_table. The names to the columns are assigned by the read.table function using *col.names = measurements[, 2]* and I suppressing the 'checking for correct variable names' specifing *check.names=FALSE*. 
At this stage the script just assigns the names to the first two columns: Subject and Activity

**Step 5- Creation of a second tidy data set containing the average of each variable for each activity and each subject.** 

* Using the *ddply* function on the df data frame the mean for each measurement     for each Subject and Activity is calculated.

* The output is saved in the run_analysis.txt file.  

### final.R  
  
The script calculates the max and min values for each column of the second tidy data set produced by run_analysis.R. These values are used for writing the CodeBook.  

The input is the output generated by run_analysis.R, that is 'run_analysis.txt'. The output is printed on the screen.


