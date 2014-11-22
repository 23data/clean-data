### Getting and Cleaning Data.

> The purpose of this project is to demonstrate your ability to collect, work with, and clean a
data set. The goal is to prepare tidy data that can be used for later analysis. You will be
graded by your peers on a series of yes/no questions related to the project. You will be
required to submit: 1) a tidy data set as described below, 2) a link to a Github repository
with your script for performing the analysis, and 3) a code book that describes the variables,
the data, and any transformations or work that you performed to clean up the data called
CodeBook.md. You should also include a README.md in the repo with your scripts. This
repo explains how all of the scripts work and how they are connected.



> One of the most exciting areas in all of data science right now is wearable computing - see
for example this article (http://www.insideactivitytracking.com/data-science-activity-trackingand-the-battle-for-the-worlds-top-sports-brand/). Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. 

> The data linked
to from the course website represent data collected from the accelerometers from the
Samsung Galaxy S smartphone. A full description is available at the site where the data was
obtained:http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)


#### You should create one R script called run_analysis.R that does the following.

1. Merges the training and the test sets to create one data set.

2. Extracts only the measurements on the mean and standard deviation for each
measurement.

3. Uses descriptive activity names to name the activities in the data set

4. Appropriately labels the data set with descriptive variable names.

5. From the data set in step 4, creates a second, independent tidy data set with the
average of each variable for each activity and each subject.


## Course project for  Getting and Cleaning Data.


## Installation

> It is assumed that you already have the UCI HAR Dataset in your working/project directory.



> Download the run_ analysis.R script and place in your working directory.


> Your directory structure should look like this now (only shown 2 levels deep):

*  ├── UCI HAR Dataset
  
*  │    ├── README.txt
  
*  │    ├── activity_labels.txt
  
*  │    ├── features.txt
  
*  │    ├── features_info.txt
  
*  │    ├── test     ├── ...
   
*  │    └── train    ├── ...   
  
*  └── run_analysis.R
  
>  Dependencies

* The script  run_analysis.R  requires the plyr package which has been used in this course, so you should have it installed already.

> Running the analysis

*  Source the script  run_analysis.R   in R by typing and entering the following  in the R console:

###  source("run_analysis.R") 

*  Remember to press enter. Wait for the code to run. 

* The output "tidy_data_final_mean.txt" is located in your working/project directory. 

* To view this file click on "Import Dataset" in the Environment area of RStudio. Select "From Text File". 

* Select "tidy_data_final_mean.txt"  and "Import". 

> Or

* Type and enter the following:


final <-read.table("tidy_data_final_mean.txt", header = TRUE, sep = " " )

View(final)

### Transformation of the original data set.

### run_analysis.R

> The R script called run_analysis.R does the following:

A. Imports package required for this script:
 
`require(plyr)`

B. Identifies Data folders, files and locations.

C. Reads in necessary data information: activity labels and feature names

 * Activity labels translate numeric activity flags into human readable activity names
 
* Feature names correspond to the column names of dataset.
 
* Loads Training and Testing dataset

* Each dataset depends on X (measurements), y (activities), and subject file

#### 1. Merges the training and the test sets to create one data set.

* `Cbind` is used to  bind the train and test sets respectively.

* The two datasets are merged with `rbind`

* Labels the columns to enable extraction of measurements in step 2.
 

#### 2. Extracts only the measurements on the mean and standard deviation for each measurement.

* I am ignoring `meanFreq()` because it is a weighted average and not a mean
and does not have a corresponding standard deviation calculation.

*  Inspect output to verify all subjects completed all activities.

*  Removes any incomplete measurements. 


#### 3. Uses descriptive activity names to name the activities in the data set.

* Attaches activity labels by activity id using  `join()` available in the plyr package.

*  Changes names to lower case and no underscore.
 
*  By levels for example change "WALKING_UPSTAIRS" to "walkingdownstairs".

*  Tidy Data requires few or no capitals, no underscores and spaces.


#### 4. Appropriately labels the data set with descriptive variable names.

* Example: `Gyro` becomes `gyroscope` 

* Removes punctuation and caps.

* Removes duplicate words in names "BodyBody".


#### 5. Creates a second, independent tidy data set with the average of each variable for each 1. activity and each 2. subject.

* `ddpl()` is used to split the data frame, apply the function `mean()`, and return the results in a data frame.

* The finall tidy data set is created with `write.table()` and saved in the working / project directory. Row names are excluded.

### Note: This data set is in Wide Format. Formatting decisions (long or wide) are guided by the problem we want to solve.  Since we do not have a specific problem set to apply the data to, the  variables are viewed as independent measurements of activity/subject actions (the form the data comes in). Hadley [7] (p 4) states that 

### "Tidy data sets provide a standardized way to link the structure of a dataset (its physical layout) with its semantics (its meaning)." The wide format allows us group the data as it is grouped by activity, subject, and the corresponding  mean of each remaining measurement. "In tidy data:

1. Each variable forms a column.
2. 
2. Each observation forms a row.
3. 
3. Each type of observational unit forms a table." ([7] Hadley, p 4)  
4. 
### The wide format is deemed to be a tidy data format.




### References


1.  <a name="uci-har"/>Human Activity Recognition Using Smartphones Data Set.
    URL: <http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>. 
    
2. <a name="har-smart"/>Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz.
   *Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine*.
   International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
   
3.  <a name="activity-recognition"/>Activity recognition. URL: <http://en.wikipedia.org/wiki/Activity_recognition>.
    
4. <a name="har-smart2"/>Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz.
   *A Public Domain Dataset for Human Activity Recognition Using Smartphones*.
   ESANN 2013 proceedings, European Symposium on Artificial Neural Networks, Computational Intelligence and
   Machine Learning. Bruges (Belgium), 24-26 April 2013
   
5.  <a name="tidy-dataset"/>Tidy data set. URL: <https://github.com/jtleek/datasharing#the-tidy-data-set>.
    

6. Edwin de Jonge and Mark van der Loo. *An introduction to data cleaning with R.* These lecture notes are based on a tutorial given by the authors at the useR!2013 conference in
Albacete, Spain.

7. Hadley Wickham. *Tidy Data* Journal of Statistical Software Volume VV, Issue II. <http://www.jstatsoft.org/>.

8. The data set:

> Human Activity Recognition Using Smartphones Dataset  
Version 1.0



> Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit? degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws


The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
