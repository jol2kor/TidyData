Processing steps to Tidy the Data
================
NJL
09/05/2021

### Reading the data into dataframes

The text files “X\_train.txt”, “X\_test.txt”, “subject\_train.txt”,
“subject\_test.txt”, “y\_train.txt”, “y\_test.txt”, “features.txt”,
“activity\_labels.txt” are read into dataframes using the read.table
command.

### Combining the Train and Test data together

The 2 dataframes containing the training and testing data are combined
together using the rbind command.

### Selecting the columns with only mean and std data (stored in W)

The columns with mean and std dev values are selected using grep
function and also sorted so as to have them in increasing order as per
original data set

### Changing the variable names appropriately

The column names are V1, V2, …. and are replaced with appropriate labels
from the features list.

### Adding the activity and subject column

The activity and subject values are added from their respective data
sets using cbind and column names are updated

### Updating the Activity with the appropiate labels, the tidy data set is named W

The activity entries are numerals which is replaced with the activity
description from the activity data set

The requested tidy data set is now ready and available!

### Calculating the means based on activity and subject to create the second independent tidy data set

The activity labels are converted to factor type and the dataframe is
grouped first by activity and then by subject, a mean summary is
calculated using the summarise command and the output is stored in the
dataframe named W3.
