Getting and Cleaning Data Coursera Course - Course Project
========================================================

The data analysis is performed using data from the Human Activity Recognition Using Smartphones Dataset project from the Smartlab - Non Linear Complex Systems Laboratory, DITEN - Università degli Studi di Genova., www.smartlab.ws

Data files downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Input Data
--------------------------------------------------------
The following files from the UCI HAR Dataset were used as input data files to this analysis project.
Descriptions of each file content can be found in the README.txt provided in the original data set.

- features.txt

- activity_labels.txt

- train/subject_train.txt

- train/x_train.txt

- train/y_train.txt

- test/subject_train.txt

- test/x_train.txt

- test/y_train.txt


Assumptions
--------------------------------------------------------
- test and train data have consistent number of columns
- Units consistent between test and train data


The Process
--------------------------------------------------------
There is a single R source code file called "run_analysis.R"" which performs the data analysis for this project. The final output tidy data set is stored into an output file called "mean_tidy_data.csv".

- The test data and train data were read in and combined into a single data set.
- Only measurements for mean and standard deviation were used for the analysis.
- The final mean per activity per person analysis was performed on this cleaned data set.



