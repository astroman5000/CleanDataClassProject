CodeBook for the Getting and Cleaning Data Course Project
========================================================

Intro
--------------------------------------------------------
This codebook provides details for the course project in the Getting and Cleaning Data Coursera class.  All source code is in the run_analysis.R file.

Variables in the source code
--------------------------------------------------------
- features: data frame which contains the ids and labels for the measurements in the source data

- subject_train: data frame which contains the contents of the subject_train.txt file

- x_train: data frame which contains the contents of the x_train.txt file

- y_train: data frame which contains the contents of the y_train.txt file

- subject_test: data frame which contains the contents of the subject_test.txt file

- x_test: data frame which contains the contents of the x_test.txt file

- y_test: data frame which contains the contents of the y_test.txt file

- activity_labels: data frame which contains the contents of the activity_labels.txt file

- df: data frame which contains the combined values of x_train and x_test

-activityid_list: contains the combines list of activity ids for both test and train data

-wanted_cols: boolean vector indicating which columns labels contain "mean()" or "std()" search

-df2: subset of df, but with only the columns for mean or std

-feature_names: list of names of columuns of df2

-df3: merge df2 with activity_labels

-dfmelt: melt output using person_id and acitivity_name as ids

-meandf: dcast output of dfmelt using person_id and activity_name as id, and calculating the mean of the variables


Transformations
--------------------------------------------------
- x_train and y_train are read is as numeric using the parameter colClasses=c("numeric"))

- train and test data are combined using rbind function

- the mean and std columns are by using grep and then subselcting the matching columns

- person_id and activity_id columns are added to df2, and moved to beginning

- activity labels are merged with df2 on the activity_id columns, then the activity_id column is removed

- data is melted and dcasted to produce the final output content





