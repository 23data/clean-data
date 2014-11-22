require(plyr)



# Identify Data folders,files and locations.
UCI_HAR_Dataset <- "UCI HAR Dataset"
x_train_file <- paste(UCI_HAR_Dataset, "/train/X_train.txt", sep = "")
y_train_file <- paste(UCI_HAR_Dataset, "/train/y_train.txt", sep = "")
subject_train_file <- paste(UCI_HAR_Dataset, "/train/subject_train.txt", sep = "")
x_test_file  <- paste(UCI_HAR_Dataset, "/test/X_test.txt", sep = "")
y_test_file  <- paste(UCI_HAR_Dataset, "/test/y_test.txt", sep = "")
subject_test_file <- paste(UCI_HAR_Dataset, "/test/subject_test.txt", sep = "")
features_file <- paste(UCI_HAR_Dataset, "/features.txt", sep = "")
activity_labels_file <- paste(UCI_HAR_Dataset, "/activity_labels.txt", sep = "")



# Loading the raw data
features <- read.table(features_file, colClasses = c("character"))
activity_labels <- read.table(activity_labels_file, col.names = c("activityid", "activity"))
x_train <- read.table(x_train_file)
y_train <- read.table(y_train_file)
subject_train <- read.table(subject_train_file)
x_test <- read.table(x_test_file)
y_test <- read.table(y_test_file)
subject_test <- read.table(subject_test_file)



# Create one R script called run_analysis.R that does the following.
# 1. Merges the training and the test sets to create one data set.

train_data_combined <- cbind(cbind(x_train, subject_train), y_train)
test_data_combined <- cbind(cbind(x_test, subject_test), y_test)
merged_data <- rbind(train_data_combined, test_data_combined)

# Label the columns to enable extraction of measurements in step 2.
data_labels <- rbind(rbind(features, c(562, "subject")), c(563, "activityid"))[,2]
names(merged_data) <- data_labels


# 2. Extracts only the measurements on the mean and standard deviation for  
# each measurement.
# I am ignoring meanFreq() because it is a weighted average and not a mean
# and does not have a corresponding standard deviation calculation.
# I am also ignoring all the angle columns because 
#  a mean value was used to calculate an angle between two vectors.
 

merged_data_mean_std <- merged_data[,grepl("mean\\(\\)|std\\(\\)|activityid|subject", names(merged_data))]

# All subjects must have done all activities.
# Remove incomplete measurements.
merged_data_mean_std[["tBodyAccJerk-mean()-X"]] <- NULL
merged_data_mean_std[["tBodyAccJerk-mean()-Y"]] <- NULL
merged_data_mean_std[["tBodyAccJerk-mean()-Z"]] <- NULL
merged_data_mean_std[["tBodyAccJerk-std()-X"]] <- NULL
merged_data_mean_std[["tBodyAccJerk-std()-Y"]] <- NULL
merged_data_mean_std[["tBodyAccJerk-std()-Z"]] <- NULL


# 3. Uses descriptive activity names to name the activities in the data set.

merged_data_mean_std <- join(merged_data_mean_std, activity_labels, by = "activityid", match = "first")

# Change names to lower case and no underscore.
# By levels for example change "beta" to "two"
levels(merged_data_mean_std$activity)[levels(merged_data_mean_std$activity)=="WALKING"] <- "walking"
levels(merged_data_mean_std$activity)[levels(merged_data_mean_std$activity)=="WALKING_UPSTAIRS"] <- "walkingupstairs"
levels(merged_data_mean_std$activity)[levels(merged_data_mean_std$activity)=="WALKING_DOWNSTAIRS"] <- "walkingdownstairs"
levels(merged_data_mean_std$activity)[levels(merged_data_mean_std$activity)=="SITTING"] <- "sitting"
levels(merged_data_mean_std$activity)[levels(merged_data_mean_std$activity)=="STANDING"] <- "standing"
levels(merged_data_mean_std$activity)[levels(merged_data_mean_std$activity)=="LAYING"] <- "laying"


# 4. Appropriately labels the data set with descriptive variable names.
# Remove puntuation and caps.
names(merged_data_mean_std) <- gsub('\\(|\\)',"",names(merged_data_mean_std), perl = TRUE)
names(merged_data_mean_std) <- make.names(names(merged_data_mean_std))
names(merged_data_mean_std) <- gsub('\\.|\\.',"",names(merged_data_mean_std), perl = TRUE)
# Change double Body in names to Body.
names(merged_data_mean_std) <- gsub('fBodyBody',"fbody",names(merged_data_mean_std))
names(merged_data_mean_std) <- gsub('\\.|\\.',"",names(merged_data_mean_std), perl = TRUE)
# Make names clearer for example replace "t" by "timedomain"
names(merged_data_mean_std) <- gsub("^t", "meantimed", names(merged_data_mean_std))
names(merged_data_mean_std) <- gsub("^f", "meanfreq", names(merged_data_mean_std))
names(merged_data_mean_std) <- gsub("Gyro", "gyroscope", names(merged_data_mean_std))
names(merged_data_mean_std) <- gsub("Acc", "accelerometer", names(merged_data_mean_std))
names(merged_data_mean_std) <- gsub("Mag", "magnitude", names(merged_data_mean_std))
names(merged_data_mean_std) <- gsub("X", "x", names(merged_data_mean_std))
names(merged_data_mean_std) <- gsub("Y", "y", names(merged_data_mean_std))
names(merged_data_mean_std) <- gsub("Body", "body", names(merged_data_mean_std))
names(merged_data_mean_std) <- gsub("Z", "z", names(merged_data_mean_std))
names(merged_data_mean_std) <- gsub("G", "g", names(merged_data_mean_std))
names(merged_data_mean_std) <- gsub("J", "j", names(merged_data_mean_std))


# 5. Creates a second, independent tidy data set with the average of each 
# variable for each activity and each subject.

tidy_data_set = ddply(merged_data_mean_std, c("activityid", "activity", "subject"), numcolwise(mean))


# Final data set by Activity and Subject.
tidy_data_set_final <- tidy_data_set[ ,-1]

write.table(tidy_data_set_final, row.name=FALSE, file = "tidy_data_final_mean.txt")
