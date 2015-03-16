# Following are the datasets used


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


#Transformation details

There are 5 parts:

Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement.
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive activity names.
Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# Below shows the column names of corresponding tidy data set with respect to the original dataset

SN	Raw data set	Tidy data set
01	subject	Subject
02	activity	Activity
03	tBodyAcc-mean()-X	tBodyAccMeanX
04	tBodyAcc-mean()-Y	tBodyAccMeanY
05	tBodyAcc-mean()-Z	tBodyAccMeanZ
06	tBodyAcc-std()-X	tBodyAccStdX
07	tBodyAcc-std()-Y	tBodyAccStdY
08	tBodyAcc-std()-Z	tBodyAccStdZ
09	tGravityAcc-mean()-X	tGravityAccMeanX
10	tGravityAcc-mean()-Y	tGravityAccMeanY
11	tGravityAcc-mean()-Z	tGravityAccMeanZ
12	tGravityAcc-std()-X	tGravityAccStdX
13	tGravityAcc-std()-Y	tGravityAccStdY
14	tGravityAcc-std()-Z	tGravityAccStdZ
15	tBodyAccJerk-mean()-X	tBodyAccJerkMeanX
16	tBodyAccJerk-mean()-Y	tBodyAccJerkMeanY
17	tBodyAccJerk-mean()-Z	tBodyAccJerkMeanZ
18	tBodyAccJerk-std()-X	tBodyAccJerkStdX
19	tBodyAccJerk-std()-Y	tBodyAccJerkStdY
20	tBodyAccJerk-std()-Z	tBodyAccJerkStdZ
21	tBodyGyro-mean()-X	tBodyGyroMeanX
22	tBodyGyro-mean()-Y	tBodyGyroMeanY
23	tBodyGyro-mean()-Z	tBodyGyroMeanZ
24	tBodyGyro-std()-X	tBodyGyroStdX
25	tBodyGyro-std()-Y	tBodyGyroStdY
26	tBodyGyro-std()-Z	tBodyGyroStdZ
27	tBodyGyroJerk-mean()-X	tBodyGyroJerkMeanX
28	tBodyGyroJerk-mean()-Y	tBodyGyroJerkMeanY
29	tBodyGyroJerk-mean()-Z	tBodyGyroJerkMeanZ
30	tBodyGyroJerk-std()-X	tBodyGyroJerkStdX
31	tBodyGyroJerk-std()-Y	tBodyGyroJerkStdY
32	tBodyGyroJerk-std()-Z	tBodyGyroJerkStdZ
33	tBodyAccMag-mean()	tBodyAccMagMean
34	tBodyAccMag-std()	tBodyAccMagStd
35	tGravityAccMag-mean()	tGravityAccMagMean
36	tGravityAccMag-std()	tGravityAccMagStd
37	tBodyAccJerkMag-mean()	tBodyAccJerkMagMean
38	tBodyAccJerkMag-std()	tBodyAccJerkMagStd
39	tBodyGyroMag-mean()	tBodyGyroMagMean
40	tBodyGyroMag-std()	tBodyGyroMagStd
41	tBodyGyroJerkMag-mean()	tBodyGyroJerkMagMean
42	tBodyGyroJerkMag-std()	tBodyGyroJerkMagStd
43	fBodyAcc-mean()-X	fBodyAccMeanX
44	fBodyAcc-mean()-Y	fBodyAccMeanY
45	fBodyAcc-mean()-Z	fBodyAccMeanZ
46	fBodyAcc-std()-X	fBodyAccStdX
47	fBodyAcc-std()-Y	fBodyAccStdY
48	fBodyAcc-std()-Z	fBodyAccStdZ
49	fBodyAccJerk-mean()-X	fBodyAccJerkMeanX
50	fBodyAccJerk-mean()-Y	fBodyAccJerkMeanY
51	fBodyAccJerk-mean()-Z	fBodyAccJerkMeanZ
52	fBodyAccJerk-std()-X	fBodyAccJerkStdX
53	fBodyAccJerk-std()-Y	fBodyAccJerkStdY
54	fBodyAccJerk-std()-Z	fBodyAccJerkStdZ
55	fBodyGyro-mean()-X	fBodyGyroMeanX
56	fBodyGyro-mean()-Y	fBodyGyroMeanY
57	fBodyGyro-mean()-Z	fBodyGyroMeanZ
58	fBodyGyro-std()-X	fBodyGyroStdX
59	fBodyGyro-std()-Y	fBodyGyroStdY
60	fBodyGyro-std()-Z	fBodyGyroStdZ
61	fBodyAccMag-mean()	fBodyAccMagMean
62	fBodyAccMag-std()	fBodyAccMagStd
63	fBodyBodyAccJerkMag-mean()	fBodyAccJerkMagMean
64	fBodyBodyAccJerkMag-std()	fBodyAccJerkMagStd
65	fBodyBodyGyroMag-mean()	fBodyGyroMagMean
66	fBodyBodyGyroMag-std()	fBodyGyroMagStd
67	fBodyBodyGyroJerkMag-mean()	fBodyGyroJerkMagMean
68	fBodyBodyGyroJerkMag-std()	fBodyGyroJerkMagStd