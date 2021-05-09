# Getting and Cleaning Data Course Project

library(dplyr)
# Reading the required data into data frames
DataTrain <- read.table("X_train.txt")
DataTest <- read.table("X_test.txt")

subj_train <- read.table("subject_train.txt")
subj_test <- read.table("subject_test.txt")

act_train<-read.table("y_train.txt")
act_test<-read.table("y_test.txt")

Features <- read.table("features.txt")
act_Labs <- read.table("activity_labels.txt")

# Combining the Train and Test data together
DataComb <- rbind(DataTrain, DataTest)
ActComb <- rbind(act_train, act_test)
SubjComb <- rbind(subj_train, subj_test)

# Combining into one data frame for easier processing

AllComb <- cbind(TempComb, SubjComb)

#Renaming binded columns
names(AllComb)[562] = "Activity"
names(AllComb)[563] = "Subject"

# Selecting the columns with only mean and std data (stored in W)
x <- grep("mean()", Features$V2)
y <- grep("std()", Features$V2)
z <- c(x, y)
z <- sort(z)

W <- AllComb[z]

# Changing the variable names appropriately
names(W) <- Features$V2[z]

# Adding the activity and subject column
W <- cbind(W, ActComb)
W <- cbind(W, SubjComb)

names(W)[80] <- "Activity"
names(W)[81] <- "Subject"

# Updating the Activity with the appropiate labels, the tidy data set is named W

W$Activity <- act_Labs$V2[W$Activity]


# Calculating the means based on activity and subject to create the second independent tidy data set
W$Activity <- factor(W$Activity)

W1 <- group_by(W, Activity, Subject)
W3 <- summarise_all(W1, mean)

# W3 contains the result 


