#read in features
features <- read.csv("UCI HAR Dataset/features.txt",header=FALSE, sep=" ")

#read in train data
subject_train <- read.csv("UCI HAR Dataset/train/subject_train.txt",header=FALSE)
x_train <- read.table("UCI HAR Dataset/train/x_train.txt",header=FALSE, colClasses=c("numeric"))
y_train <- read.table("UCI HAR Dataset/train/y_train.txt",header=FALSE)

#read in test data
subject_test<- read.csv("UCI HAR Dataset/test/subject_test.txt",header=FALSE)
x_test <- read.table("UCI HAR Dataset/test/x_test.txt",header=FALSE, colClasses=c("numeric"))
y_test <- read.table("UCI HAR Dataset/test/y_test.txt",header=FALSE)

#combine train and test data
df <- rbind(x_train, x_test)
subject_list <- rbind(subject_train, subject_test)
activityid_list <- rbind(y_train, y_test)
colnames(df) <- features$V2

#only include wanted columns
wanted_cols <- grep("mean\\(\\)|std\\(\\)", features$V2)
df2 <- df[,wanted_cols]
feature_names <- colnames(df2)

#append subject and activity columns
df2["person_id"] <- subject_list$V1
df2["activity_id"] <- activityid_list$V1

#read in activity labels and merge
activity_labels <- read.csv("UCI HAR Dataset/activity_labels.txt",header=FALSE, sep=" ", col.names=c("activity_id", "activity_name"))
df3 <- merge(df2,activity_labels)
df3$activity_id <- NULL
df3 <- df3[,c(ncol(df3),1:(ncol(df3)-1))]
df3 <- df3[,c(ncol(df3),1:(ncol(df3)-1))]

#write to output file
#write.csv(df3, "tidy_data.csv",row.names=FALSE)

dfmelt <- melt(df3,id=c("person_id","activity_name"), measure.vars=feature_names)
meandf <- dcast(dfmelt, person_id + activity_name ~ variable, mean)

#write to output file
write.csv(meandf, "mean_tidy_data.csv", row.names=FALSE)


