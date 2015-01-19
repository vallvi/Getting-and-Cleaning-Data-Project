# Getting-and-Cleaning-Data-Project
## part1
This project deals with the data collected from the accelerometers from the Samsung Galaxy S smartphone.A full description is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The purpose of this project is to clean and tidy up a given data set. The dataset is downloaded from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The raw data is split into train and test sets. To start with, the run_analysis.R script scans the data from train/X_train.txt and test/X_test.txt files. This data is then converted into matrices with 561 columns each. I merged the two datasets using rbind.  
The files containing information about Subject are read into R and then rbind to form one matrix.  
The files containing information about labels for activities are also read into R using read.csv and then rbind to form one matrix.  
The features.txt and activity_labels.txt are read into R.  
All the three matrices: subject, labels and set_data are merged into one data frame and columns are renamed using the features matrix. 

##part2
Using grep, those variables with mean and std of the measurements are selected and a new dataset is extracted with subject, labels and mean, std variables. 

##part3
The labels column in the existing dataset is replaced with the descriptive activites from the activity matrix and column name is changed to activity.  

##part4
Using gsub, the punctuation marks in the variable names are deleted and "-" is replaced with "_". Changes were made to  variables where Body has been dupilcated. 

##part5
From the data in part4, using dplyr group_by command, it is grouped into each activity for each subject, and the mean of variables is calculated. 
The final dataset is wrtten into text file using write.table()





