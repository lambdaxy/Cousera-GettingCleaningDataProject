# CodeBook

This codebook contains a description of the variables that were retained from the original data set and are available in the tidy_summary.txt data set.

The original data has been grouped by subject and activity creating 180 different combinations of subject-activity. The remaining variables were averaged based on this grouping.

## Variables that were used for aggregating the data

* "Activity": Activity can have one of the following 6 values
  1. LAYING             
  2. SITTING            
  3. STANDING           
  4. WALKING            
  5. WALKING_DOWNSTAIRS 
  6. WALKING_UPSTAIRS      

* "Subject": They were 30 subjects in the original data set so this value is in the range 1..30.

## Measurements variables

All the variables below are measurements that were averaged based on the grouping of the above two variables. From the original data set only those measurements that expressed a mean or a standard deviation were retained.

* "tBodyAcc-mean()-X"               
* "tBodyAcc-mean()-Y"               
* "tBodyAcc-mean()-Z"              
* "tBodyAcc-std()-X"                
* "tBodyAcc-std()-Y"                
* "tBodyAcc-std()-Z"               
* "tGravityAcc-mean()-X"            
* "tGravityAcc-mean()-Y"            
* "tGravityAcc-mean()-Z"           
* "tGravityAcc-std()-X"             
* "tGravityAcc-std()-Y"             
* "tGravityAcc-std()-Z"            
* "tBodyAccJerk-mean()-X"           
* "tBodyAccJerk-mean()-Y"           
* "tBodyAccJerk-mean()-Z"          
* "tBodyAccJerk-std()-X"            
* "tBodyAccJerk-std()-Y"            
* "tBodyAccJerk-std()-Z"           
* "tBodyGyro-mean()-X"              
* "tBodyGyro-mean()-Y"              
* "tBodyGyro-mean()-Z"             
* "tBodyGyro-std()-X"               
* "tBodyGyro-std()-Y"               
* "tBodyGyro-std()-Z"              
* "tBodyGyroJerk-mean()-X"          
* "tBodyGyroJerk-mean()-Y"          
* "tBodyGyroJerk-mean()-Z"         
* "tBodyGyroJerk-std()-X"           
* "tBodyGyroJerk-std()-Y"           
* "tBodyGyroJerk-std()-Z"          
* "tBodyAccMag-mean()"              
* "tBodyAccMag-std()"               
* "tGravityAccMag-mean()"          
* "tGravityAccMag-std()"            
* "tBodyAccJerkMag-mean()"          
* "tBodyAccJerkMag-std()"          
* "tBodyGyroMag-mean()"             
* "tBodyGyroMag-std()"              
* "tBodyGyroJerkMag-mean()"        
* "tBodyGyroJerkMag-std()"          
* "fBodyAcc-mean()-X"               
* "fBodyAcc-mean()-Y"              
* "fBodyAcc-mean()-Z"               
* "fBodyAcc-std()-X"                
* "fBodyAcc-std()-Y"               
* "fBodyAcc-std()-Z"                
* "fBodyAcc-meanFreq()-X"           
* "fBodyAcc-meanFreq()-Y"          
* "fBodyAcc-meanFreq()-Z"           
* "fBodyAccJerk-mean()-X"           
* "fBodyAccJerk-mean()-Y"          
* "fBodyAccJerk-mean()-Z"           
* "fBodyAccJerk-std()-X"            
* "fBodyAccJerk-std()-Y"           
* "fBodyAccJerk-std()-Z"            
* "fBodyAccJerk-meanFreq()-X"       
* "fBodyAccJerk-meanFreq()-Y"      
* "fBodyAccJerk-meanFreq()-Z"       
* "fBodyGyro-mean()-X"              
* "fBodyGyro-mean()-Y"             
* "fBodyGyro-mean()-Z"              
* "fBodyGyro-std()-X"               
* "fBodyGyro-std()-Y"              
* "fBodyGyro-std()-Z"               
* "fBodyGyro-meanFreq()-X"          
* "fBodyGyro-meanFreq()-Y"         
* "fBodyGyro-meanFreq()-Z"          
* "fBodyAccMag-mean()"              
* "fBodyAccMag-std()"              
* "fBodyAccMag-meanFreq()"          
* "fBodyBodyAccJerkMag-mean()"      
* "fBodyBodyAccJerkMag-std()"      
* "fBodyBodyAccJerkMag-meanFreq()"  
* "fBodyBodyGyroMag-mean()"         
* "fBodyBodyGyroMag-std()"         
* "fBodyBodyGyroMag-meanFreq()"     
* "fBodyBodyGyroJerkMag-mean()"     
* "fBodyBodyGyroJerkMag-std()"     
* "fBodyBodyGyroJerkMag-meanFreq()" 
