## Codebook


## Human Activity Recognition Using Smartphones Data Set.

>  Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012.


### Dataset - explanation / definition:
> The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

> Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

> Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

> These signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals include: 

* mean(): Mean value
* std(): Standard deviation

> Only mean and standard deviation calculations were averaged(mean) for this Getting and Cleaning Data Course Project. 
    
### How to interpret the data:
> The instructions for this project:

*2. Extracts only the measurements on the mean and standard deviation for each
measurement.*



*5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.* 

### Example:

> The *average/mean* for the activity "walking" by subject 2 for the feature / variable "meantimedbodyaccelerometerstdx" (Standard Deviation of Body acceleration by time on the X axis measurement).

> Variable and level names were made more descriptive, punctuation removed and capitals were transformed to lowercase (tidy data). 

* All the measurement variables were prefixed with `mean` to indicate it is now an average/mean of the previous mean or standard deviation measurements.

* Example: `Gyro` becomes `gyroscope` 

* Example: `t` becomes `timed` 

* Example: `f` becomes `freq` 

* Example: `Acc` becomes `accelerometer` 

* Example: `Mag` becomes `magnitude` 

* "tBodyAccmean-X"  becomes "meantimedbodyaccelerometermeanx "
  
* "tBodyGyrostd-Z' becomes "meantimedbodygyroscopestdz"  


> See readme.md for detailed information.

### Dataframe:    180 observations of  62 variables in Wide Format.

### Tidy Data in Wide Format

Formatting decisions (long or wide) are guided by the problem we want to solve.  Since we do not have a specific problem set to apply the data to, the  variables are viewed as independent measurements of activity/subject actions (the form the data comes in).

> See `readme` file in this repository for more information regarding Tidy Data.

### Variables:


#### 1. activity            
> Factor with 6 levels  

 * walking
 * walkingupstairs
 * walkingdownstairs
 * sitting
 * standing
 * laying
 
#### 2. subject 
> An identifier of the subject who carried out the experiment.

> Integer      1:30 
 
#### 3. meantimedbodyaccelerometermeanx 

> Numerical  0.277 0.276 0.276 0.279 0.278 ...

#### 4. meantimedbodyaccelerometermeany  
> Numerical  -0.0174 -0.0186 -0.0172 -0.0148 -0.0173 ...

#### 5. meantimedbodyaccelerometermeanz       
> Numerical  -0.111 -0.106 -0.113 -0.111 -0.108 ...

#### 6. meantimedbodyaccelerometerstdx
> Numerical  -0.284 -0.424 -0.36 -0.441 -0.294 ...
 
#### 7. meantimedbodyaccelerometerstdy 
> Numerical  0.1145 -0.0781 -0.0699 -0.0788 0.0767 ...
 
#### 8. meantimedbodyaccelerometerstdz
> Numerical  -0.26 -0.425 -0.387 -0.586 -0.457 ...
 
#### 9. meantimedgravityaccelerometermeanx    
>

> Numerical  0.935 0.913 0.937 0.964 0.973 ...
 
#### 10. meantimedgravityaccelerometermeany    
> Numerical  -0.2822 -0.3466 -0.262 -0.0859 -0.1004 ...
 
#### 11. meantimedgravityaccelerometermeanz    
> Numerical  -0.0681 0.08473 -0.13811 0.12776 0.00248 ...
 
#### 12.meantimedgravityaccelerometerstdx     
> Numerical  -0.977 -0.973 -0.978 -0.984 -0.979 ...
 
#### 13. meantimedgravityaccelerometerstdy     
> Numerical  -0.971 -0.972 -0.962 -0.968 -0.962 ...
 
#### 14. meantimedgravityaccelerometerstdz     
> Numerical  -0.948 -0.972 -0.952 -0.963 -0.965 ...
  
#### 15. meantimedbodygyroscopemeanx      
> Numerical  -0.0418 -0.053 -0.0256 -0.0318 -0.0489 ...
 
#### 16. meantimedbodygyroscopemeany      
> Numerical  -0.0695 -0.0482 -0.0779 -0.0727 -0.069 ...
 
#### 17. meantimedbodygyroscopemeanz      
> Numerical  0.0849 0.0828 0.0813 0.0806 0.0815 ...
 
#### 18. meantimedbodygyroscopestdx       
> Numerical  -0.474 -0.562 -0.572 -0.501 -0.491 ...
 
#### 19. meantimedbodygyroscopestdy       
> Numerical  -0.0546 -0.5385 -0.5638 -0.6654 -0.5046 ...
 
#### 20. meantimedbodygyroscopestdz       
> Numerical  -0.344 -0.481 -0.477 -0.663 -0.319 ...
 
#### 21. meantimedbodygyroscopejerkmeanx  
> Numerical  -0.09 -0.0819 -0.0952 -0.1153 -0.0888 ...
 
#### 22. meantimedbodygyroscopejerkmeany  
> Numerical  -0.0398 -0.0538 -0.0388 -0.0393 -0.045 ...
 
#### 23. meantimedbodygyroscopejerkmeanz  
> Numerical  -0.0461 -0.0515 -0.0504 -0.0551 -0.0483 ...
 
#### 24. meantimedbodygyroscopejerkstdx   
> Numerical  -0.207 -0.39 -0.386 -0.492 -0.358 ...
 
#### 25. meantimedbodygyroscopejerkstdy   
> Numerical  -0.304 -0.634 -0.639 -0.807 -0.571 ...
 
#### 26. meantimedbodygyroscopejerkstdz   
> Numerical  -0.404 -0.435 -0.537 -0.64 -0.158 ...
 
#### 27. meantimedbodyaccelerometermagnitudemean     
> Numerical  -0.137 -0.29 -0.255 -0.312 -0.158 ...
 
#### 28.meantimedbodyaccelerometermagnitudestd      
> Numerical  -0.22 -0.423 -0.328 -0.528 -0.377 ...
 
#### 29. meantimedgravityaccelerometermagnitudemean  
> Numerical  -0.137 -0.29 -0.255 -0.312 -0.158 ...
 
#### 30. meantimedgravityaccelerometermagnitudestd   
> Numerical  -0.22 -0.423 -0.328 -0.528 -0.377 ...
 
#### 31. meantimedbodyaccelerometerjerkmagnitudemean 
> Numerical  -0.141 -0.281 -0.28 -0.367 -0.288 ...
 
#### 32. meantimedbodyaccelerometerjerkmagnitudestd  
> Numerical  -0.0745 -0.1642 -0.1399 -0.3169 -0.2822 ...
 
#### 33. meantimedbodygyroscopemagnitudemean    
> Numerical  -0.161 -0.447 -0.466 -0.498 -0.356 ...
 
#### 34. meantimedbodygyroscopemagnitudestd     
> Numerical  -0.187 -0.553 -0.562 -0.553 -0.492 ...
 
#### 35. meantimedbodygyroscopejerkmagnitudemean
> Numerical  -0.299 -0.548 -0.566 -0.681 -0.445 ...
 
#### 36. meantimedbodygyroscopejerkmagnitudestd 
> Numerical  -0.325 -0.558 -0.567 -0.73 -0.489 ...
 
#### 37. meanfreqbodyaccelerometermeanx       
> Numerical  -0.203 -0.346 -0.317 -0.427 -0.288 ...
 
#### 38. meanfreqbodyaccelerometermeany       
> Numerical  0.08971 -0.0219 -0.0813 -0.1494 0.00946 ...
 
#### 39. meanfreqbodyaccelerometermeanz       
> Numerical  -0.332 -0.454 -0.412 -0.631 -0.49 ...
 
#### 40. meanfreqbodyaccelerometerstdx        
> Numerical  -0.319 -0.458 -0.379 -0.447 -0.298 ...
 
#### 41. meanfreqbodyaccelerometerstdy        
> Numerical  0.056 -0.1692 -0.124 -0.1018 0.0426 ...
 
#### 42. meanfreqbodyaccelerometerstdz        
> Numerical  -0.28 -0.455 -0.423 -0.594 -0.483 ...
 
#### 43. meanfreqbodyaccelerometerjerkmeanx   
> Numerical  -0.171 -0.305 -0.305 -0.359 -0.345 ...
 
#### 44. meanfreqbodyaccelerometerjerkmeany   
> Numerical  -0.0352 -0.0788 -0.1405 -0.2796 -0.1811 ...
 
#### 45. meanfreqbodyaccelerometerjerkmeanz   
> Numerical  -0.469 -0.555 -0.514 -0.729 -0.59 ...
 
#### 46. meanfreqbodyaccelerometerjerkstdx    
> Numerical  -0.134 -0.314 -0.297 -0.297 -0.321 ...
 
#### 47. meanfreqbodyaccelerometerjerkstdy    
> Numerical  0.10674 -0.01533 -0.00561 -0.2099 -0.05452 ...
 
#### 48. meanfreqbodyaccelerometerjerkstdz    
> Numerical  -0.535 -0.616 -0.544 -0.772 -0.633 ...
 
#### 49. meanfreqbodygyroscopemeanx      
> Numerical  -0.339 -0.43 -0.438 -0.373 -0.373 ...
 
#### 50. meanfreqbodygyroscopemeany      
> Numerical  -0.103 -0.555 -0.562 -0.688 -0.514 ...
 
#### 51. meanfreqbodygyroscopemeanz      
> Numerical  -0.256 -0.397 -0.418 -0.601 -0.213 ...
 
#### 52. meanfreqbodygyroscopestdx       
> Numerical  -0.517 -0.604 -0.615 -0.543 -0.529 ...
 
#### 53. meanfreqbodygyroscopestdy       
> Numerical  -0.0335 -0.533 -0.5689 -0.6547 -0.5027 ...
 
#### 54. meanfreqbodygyroscopestdz       
> Numerical  -0.437 -0.56 -0.546 -0.716 -0.42 ...
 
#### 55. meanfreqbodyaccelerometermagnitudemean     
> Numerical  -0.129 -0.324 -0.29 -0.451 -0.305 ...
 
#### 56. meanfreqbodyaccelerometermagnitudestd      
> Numerical  -0.398 -0.577 -0.456 -0.651 -0.52 ...
 
#### 57. meanfreqbodyaccelerometerjerkmagnitudemean 
> Numerical  -0.0571 -0.1691 -0.1868 -0.3186 -0.2695 ...
 
#### 58. meanfreqbodyaccelerometerjerkmagnitudestd  
> Numerical  -0.1035 -0.1641 -0.0899 -0.3205 -0.3057 ...
 
#### 59. meanfreqbodygyroscopemagnitudemean    
> Numerical  -0.199 -0.531 -0.57 -0.609 -0.484 ...
 
#### 60. meanfreqbodygyroscopemagnitudestd     
> Numerical  -0.321 -0.652 -0.633 -0.594 -0.59 ...
 
#### 61. meanfreqbodygyroscopejerkmagnitudemean
> Numerical  -0.319 -0.583 -0.608 -0.724 -0.548 ...
 
#### 62. meanfreqbodygyroscopejerkmagnitudestd 
> Numerical  -0.382 -0.558 -0.549 -0.758 -0.456 ...
 
 
### NOTE: For additional information on this data set please refer to the *readme* file in this repository.

>

