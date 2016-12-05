#Codebook

## Data Set Information
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years.

Each person wears a smartphone (Samsung Galaxy S II) on the waist and performed six activities:
- WALKING 
- WALKING_UPSTAIRS
- WALKING_DOWNSTAIRS
- SITTING
- STANDING
- LAYING

Using its embedded accelerometer and gyroscope, we captured **3-axial linear acceleration** and **3-axial angular velocity** at a constant rate of *50Hz*. 
The experiments have been video-recorded to label the data manually. 
The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). 
The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. 
The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. 
From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## Attribute Information
For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope.  
- Its activity label. 

## Variable descriptions
|Variables                            | Descriptions
|-------------------------------------|----------------------------------------------------------------------------------|
|Subject                              |Subject ID (Range from 1 to 30)
|Activity                             |Activity Name
| tbodyacc-mean-x                     | Mean time for body acceleration in X direction
| tbodyacc-mean-y                     | Mean time for body acceleration in Y direction
| tbodyacc-mean-z                     | Mean time for body acceleration in Z direction
| tbodyacc-std-x                      | Standard deviation of time for body acceleration in X direction
| tbodyacc-std-y                      | Standard deviation of time for body acceleration in Y direction
| tbodyacc-std-z                      | Standard deviation of time for body acceleration in Z direction
| tgravityacc-mean-x                  | Mean time of gravity acceleration in X direction
| tgravityacc-mean-y                  | Mean time of gravity acceleration in Y direction
| tgravityacc-mean-z                  | Mean time of gravity acceleartion in Z direction
| tgravityacc-std-x                   | Standard deviation of time for gravity acceleration in X direction
| tgravityacc-std-y                   | Standard deviation of time for gravity acceleration in Y direction
| tgravityacc-std-z                   | Standard deviation of time for gravity acceleration in Z direction
| tbodyaccjerk-mean-x                 | Mean time of body acceleration jerk in X direction
| tbodyaccjerk-mean-y                 | Mean time of body acceleration jerk in Y direction
| tbodyaccjerk-mean-z                 | Mean time of body acceleration jerk in Z direction
| tbodyaccjerk-std-x                  | Standard deviation of time for body acceleration jerk in X direction
| tbodyaccjerk-std-y                  | Standard deviation of time for body acceleration jerk in Y direction
| tbodyaccjerk-std-z                  | Standard deviation of time for body acceleration jerk in Z direction
| tbodygyro-mean-x                    | Mean time for body gyroscope measurement in X direction
| tbodygyro-mean-y                    | Mean time for body gyroscope measurement in Y direction
| tbodygyro-mean-z                    | Mean time for body gyroscope measurement in Z direction
| tbodygyro-std-x                     | Standard deviation of time for body gyroscope measurement in X direction
| tbodygyro-std-y                     | Standard deviation of time for body gyroscope measurement in Y direction
| tbodygyro-std-z                     | Standard deviation of time for body gyroscope measurement in Z direction
| tbodygyrojerk-mean-x                | Mean time for jerk signal of body in X direction
| tbodygyrojerk-mean-y                | Mean time for jerk signal of body in Y direction
| tbodygyrojerk-mean-z                | Mean time for jerk signal of body in Z direction
| tbodygyrojerk-std-x                 | Standard deviation of time for jerk signal of Gyroscope body in X direction
| tbodygyrojerk-std-y                 | Standard deviation of time for jerk signal of Gyroscope body in Y direction
| tbodygyrojerk-std-z                 | Standard deviation of time for jerk signal of Gyroscope body in Z direction
| tbodyaccmag-mean                    | Mean time for magnitude of body acceleration 
| tbodyaccmag-std                     | Standard deviation of time for magnitude of body acceleration 
| tgravityaccmag-mean                 | Mean time for gravity acceleration magnitude 
| tgravityaccmag-std                  | Standard deviation of time for gravity acceleration magnitude 
| tbodyaccjerkmag-mean                | Mean time for magnitude of body acceleration jerk 
| tbodyaccjerkmag-std                 | Standard deviation of time for body acceleration jerk magnitude 
| tbodygyromag-mean                   | Mean magnitude of time for body gyroscope measurement 
| tbodygyromag-std                    | Standard deviation of time for magnitude of body gyroscope measurement 
| tbodygyrojerkmag-mean               | Mean magnitude of time for body gyroscope jerk measurement 
| tbodygyrojerkmag-std                | Standard deviation of time for magnitude of body gyroscope jerk measurement 
| fbodyacc-mean-x                     | Mean frequency of body acceleration in X direction
| fbodyacc-mean-y                     | Mean frequency of body acceleration in Y direction
| fbodyacc-mean-z                     | Mean frequency of body acceleration in Z direction
| fbodyacc-std-x                      | Standard deviation of frequency for body acceleration in X direction
| fbodyacc-std-y                      | Standard deviation of frequency for body acceleration in Y direction
| fbodyacc-std-z                      | Standard deviation of frequency for body acceleration in Z direction
| fbodyaccjerk-mean-x                 | Mean frequency of body accerlation jerk in X direction
| fbodyaccjerk-mean-y                 | Mean frequency of body accerlation jerk in Y direction
| fbodyaccjerk-mean-z                 | Mean frequency of body accerlation jerk in Z direction
| fbodyaccjerk-std-x                  | Standard deviation of frequency for body accerlation jerk in X direction
| fbodyaccjerk-std-y                  | Standard deviation of frequency for body accerlation jerk in Y direction
| fbodyaccjerk-std-z                  | Standard deviation of frequency for body accerlation jerk in Z direction
| fbodygyro-mean-x                    | Mean frequency of body gyroscope measurement in X direction
| fbodygyro-mean-y                    | Mean frequency of body gyroscope measurement in Y direction
| fbodygyro-mean-z                    | Mean frequency of body gyroscope measurement in Z direction
| fbodygyro-std-x                     | Standard deviation frequency of body gyroscope measurement in X direction
| fbodygyro-std-y                     | Standard deviation frequency of body gyroscope measurement in Y direction
| fbodygyro-std-z                     | Standard deviation frequency of body gyroscope measurement in Z direction
| fbodyaccmag-mean                    | Mean frequency of body acceleration magnitude
| fbodyaccmag-std                     | Standard deviation of frequency for body acceleration magnitude
| fbodybodyaccjerkmag-mean            | Mean frequency of body acceleration jerk magnitude
| fbodybodyaccjerkmag-std             | Standard deviation of frequency for body acceleration jerk magnitude
| fbodybodygyromag-mean               | Mean frequency of magnitude for body gyroscope measurement
| fbodybodygyromag-std                | Standard deviation of frequency for magnitude of body gyroscope measurement
| fbodybodygyrojerkmag-mean           | Mean frequency of magnitude for body gyroscope jerk measurement
| fbodybodygyrojerkmag-std            | Standard deviation of frequency for magnitude of body gyroscope jerk measurement



## Relevant Paper
- Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. 
Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. 
International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012 

- Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra, Jorge L. Reyes-Ortiz. 
Energy Efficient Smartphone-Based Activity Recognition using Fixed-Point Arithmetic. 
Journal of Universal Computer Science. Special Issue in Ambient Assisted Living: Home Care. Volume 19, Issue 9. May 2013

- Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. 
Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. 
4th International Workshop of Ambient Assited Living, IWAAL 2012, Vitoria-Gasteiz, Spain, December 3-5, 2012. Proceedings. 
Lecture Notes in Computer Science 2012, pp 216-223. 

- Jorge Luis Reyes-Ortiz, Alessandro Ghio, Xavier Parra-Llanas, Davide Anguita, Joan Cabestany, Andreu Català. 
Human Activity and Motion Disorder Recognition: Towards Smarter Interactive Cognitive Environments. 
21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. 
Bruges, Belgium 24-26 April 2013.


## Citation Request
- Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. 
- A Public Domain Dataset for Human Activity Recognition Using Smartphones. 
21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. 
Bruges, Belgium 24-26 April 2013.
