# run_analysis.R Code Book  

Description of the transformations performed to clean up the data and of the variables contained in the output of the script run_analysis.R, that is the file 'run_analysis.txt'  

### Transformations performed  
* The script combines the test and the training data sets by the rows, obtaining a frame of 10299 rows and 561 columns.  
* Then it extracts the measurements on the mean and standard deviation for each measurement. Two columns are added: the first with the number of the subject who performed the activity and the second with the number that identify the activity. The number of columns at this point are 88.  
* Descriptive activity names are then subsitued to the numbers that label the activities in the data set.  
* Descriptive variable names are assigned to the data set.
* A second tidy data set is created, with the average of each variable for each activity and each subject. This has 181 rows and 88 variables: the first column correspond to the number identifing the subject and the second one to the activity performed. 

For further details see the README.md file.  
 
### Description of the variable of the second output of the script, i.e. the tidy data set contained in run_analysis.txt  


#### Format:  

   * *Variable name*
   * Variable maximum field width
   * Range of values  
   * Variable definition  


**Unities**  

   * The linear acceleration signal from the smartphone accelerometer is in standard gravity units 'g'.  
   * The angular velocity measured by the gyroscope is in radians/second. 
   * The angles are in radians.  

1.  *Subject*  
    2  
    1 - 30  
    Subject who performed the activity  
    
2.  *Activity*  
    18      
    Character  
    Activity name  

3.  *tBodyAcc-mean()-X*  
    9  
    0.2215982 - 0.301461  
    Mean acceleration along the X axis, average of the different measurements taken on the subject  
    
4.  *tBodyAcc-mean()-Y*  
    12  
    -0.04051395 - -0.001308288  
    Mean acceleration along the Y axis, average of the different measurements taken on the subject

5.  *tBodyAcc-mean()-Z*  
    11  
    -0.1525139 - -0.07537847  
    Mean acceleration along the Z axis, average of the different measurements taken on the subject  

6. *tBodyAcc-std()-X*  
    10  
    -0.9960686 - 0.6269171  
    Mean standard deviation of the acceleration along the X axis, average of the different measurements taken on the subject 
    
7. *tBodyAcc-std()-Y*  
    10  
    -0.9902409 - 0.616937  
    Mean standard deviation of the acceleration along the Y axis, average of the different measurements taken on the subject  
    
8. *tBodyAcc-std()-Z*  
    10  
    -0.9876587 - 0.6090179  
    Mean standard deviation of the acceleration along the Z axis, average of the different measurements taken on the subject  
    
9. *tGravityAcc-mean()-X*  
    10   
    -0.6800432 - 0.9745087  
    Mean gravity acceleration along the X axis, average of the different measurements taken on the subject  
    
10. *tGravityAcc-mean()-Y*  
    10  
    -0.4798948 - 0.9565938  
    Mean gravity acceleration along the Y axis, average of the different measurements taken on the subject 
    
11. *tGravityAcc-mean()-Z*  
    10  
    -0.4950887 - 0.957873  
    Mean gravity acceleration along the Y axis, average of the different measurements taken on the subject  

12. *tGravityAcc-std()-X*  
    10  
    -0.9967642 - -0.8295549  
    Mean standard deviation for the gravity acceleration along the X axis, average of the different measurements taken on the subject   
    
13. *tGravityAcc-std()-Y*  
    10  
    -0.9942476 - -0.6435784  
    Mean standard deviation for the gravity acceleration along the Y axis, average of the different measurements taken on the subject 
    
14. *tGravityAcc-std()-Z*  
    10  
    -0.9909572 - -0.6101612  
    Mean standard deviation for the gravity acceleration along the Z axis, average of the different measurements taken on the subject 
    
15. *tBodyAccJerk-mean()-X*  
    9  
    0.0426881 - 0.130193  
    Mean of the acceleration along the X axis derived in time, average of the different measurements taken on the subject 
    
16. *tBodyAccJerk-mean()-Y*  
    11  
    -0.03868721 - 0.05681859  
    Mean of the acceleration along the Y axis derived in time, average of the different measurements taken on the subject  
    
17. *tBodyAccJerk-mean()-Z*  
    11  
    -0.06745839 - 0.03805336  
    Mean of the acceleration along the Z axis derived in time, average of the different measurements taken on the subject  

18. *tBodyAccJerk-std()-X*  
    10  
    -0.9946045 - 0.544273  
    Mean of the standard deviation of acceleration along the X axis derived in time, average of the different measurements taken on the subject 
    
19. *tBodyAccJerk-std()-Y*  
    10  
    -0.9895136 - 0.3553067  
    Mean of the standard deviation od the acceleration along the Y axis derived in time, average of the different measurements taken on the subject  
    
20. *tBodyAccJerk-std()-Z*  
    10  
    -0.9932883 - 0.03101571  
    Mean of the standard deviation of the acceleration along the Z axis derived in time, average of the different measurements taken on the subject  
    
21.*tBodyGyro-mean()-X*  
    10  
    -0.2057754 - 0.1927045  
    Angular velocity relative to the X axis, averaged on the different mean value measurements taken on the subject 
    
22.*tBodyGyro-mean()-Y*  
    10  
    -0.2042054 - 0.02747076  
    Angular velocity relative to the Y axis, averaged on the different mean value measurements taken on the subject 
    
23.*tBodyGyro-mean()-Z*  
    10
    -0.0724546 - 0.1791021  
    Angular velocity relative to the Z axis, averaged on the different mean value measurements taken on the subject 
    
24. *tBodyGyro-std()-X*  
    10  
    -0.9942766 - 0.2676572  
    Mean standard deviation of the angular velocity relative to the X axis, averaged on the different mean value measurements taken on the subject   
    
25. *tBodyGyro-std()-Y*  
    10  
    -0.9942105 - 0.4765187  
    Mean standard deviation of the angular velocity relative to the Y axis, averaged on the different mean value measurements taken on the subject   
    
26. *tBodyGyro-std()-Z*  
    10  
    -0.9855384 - 0.5648758  
    Mean standard deviation of the angular velocity relative to the Z axis, averaged on the different mean value measurements taken on the subject   
    
27. *tBodyGyroJerk-mean()-X*  
    11  
    -0.1572125 - -0.02209163  
    Angular velocity derived on time relative to the X axis, averaged on the different mean value measurements taken on the subject  
    
28. *tBodyGyroJerk-mean()-Y*  
    11  
    -0.07680899 - -0.01320228  
    Angular velocity derived on time relative to the Y axis, averaged on the different mean value measurements taken on the subject  
    
29. *tBodyGyroJerk-mean()-Z*  
    12  
    -0.09249985 - -0.006940664  
    Angular velocity derived on time relative to the Z axis, averaged on the different mean value measurements taken on the subject  
    
30. *tBodyGyroJerk-std()-X*  
    10  
    -0.9965425 - 0.1791486  
    Standard deviation of the angular velocity derived on time relative to the X axis, averaged on the different mean value measurements taken on the subject  
    
31. *tBodyGyroJerk-std()-Y*  
    10  
    -0.9970816 - 0.2959459  
    Standard deviation of the angular velocity derived on time relative to the Y axis, averaged on the different mean value measurements taken on the subject  

32. *tBodyGyroJerk-std()-Z*  
    10  
    -0.9953808 - 0.1932065  
    Standard deviation of the angular velocity derived on time relative to the Z axis, averaged on the different mean value measurements taken on the subject  
    
33. *tBodyAccMag-mean()*  
    10  
    -0.9864932 - 0.6446043  
    Euclidean norm of the mean linear acceleration, average of the different euclidean norms calculated for the subject  
    
34. *tBodyAccMag-std()*  
    10  
    -0.9864645 - 0.4284059  
    Euclidean norm of the standard deviation of the mean linear acceleration, average of the different euclidean norms calculated for the subject  
    
35. *tGravityAccMag-mean()*  
    10  
    -0.9864932 - 0.6446043  
    Euclidean norm of the mean linear gravity acceleration, average of the different euclidean norms calculated for the subject  

36. *tGravityAccMag-std()*  
    10  
    -0.9864645 - 0.4284059  
    Euclidean norm of the standrd deviation relative to the mean linear gravity acceleration, average of the different euclidean norms calculated for the subject  
    
37. *tBodyAccJerkMag-mean()*  
    10  
    -0.9928147 - 0.4344904  
    Euclidean norm of the mean linear acceleration derived in time, average of the different euclidean norms calculated for the subject  
    
38. *tBodyAccJerkMag-std()*  
    10  
    -0.9946469 - 0.4506121  
    Euclidean norm of the standard deviation of the mean linear acceleration derived in time, average of the different euclidean norms calculated for the subject  
    
39. *tBodyGyroMag-mean()*  
    10  
    -0.9807408 - 0.4180046  
    Euclidean norm of the mean angular velocity, average of the different euclidean norms calculated for the subject  
    
40. *tBodyGyroMag-std()*  
    10  
    -0.9813727 - 0.299976  
    Standard deviation of the euclidean norm of the mean angular velocity, average of the different euclidean norms calculated for the subject  

41. *tBodyGyroJerkMag-mean()*  
    10  
    -0.9973225 - 0.08758166  
    Euclidean norm of the mean of the angular velocity derived in time, average of the different euclidean norms calculated for the subject  

42. *tBodyGyroJerkMag-std()*  
    10  
    -0.9976661 - 0.2501732  
    Standard deviation of the Euclidean norm of the mean of the angular velocity derived in time, average of the different euclidean norms calculated for the subject  

43. *fBodyAcc-mean()-X*  
    10  
    -0.9952499 - 0.537012  
    Mean of the Fast Fourier Transformation of the body linear acceleration along the X axis, averaged for different measurements on the subject  

44. *fBodyAcc-mean()-Y*  
    10  
    -0.9890343 - 0.5241877  
    Mean of the Fast Fourier Transformation of the body linear acceleration along the Y axis, averaged for different measurements on the subject  

45. *fBodyAcc-mean()-Z*  
    10  
    -0.9894739 - 0.280736  
    Mean of the Fast Fourier Transformation of the body linear acceleration along the Z axis, averaged for different measurements on the subject  

46. *fBodyAcc-std()-X*  
    10  
    -0.9966046 - 0.6585065  
    Mean Standard deviation of the Fast Fourier Transformation of the body linear acceleration along the X axis, averaged for different measurements on the subject  

47. *fBodyAcc-std()-Y*  
    10  
    -0.9906804 - 0.5601913  
    Mean Standard deviation of the Fast Fourier Transformation of the body linear acceleration along the Y axis, averaged for different measurements on the subject  

48. *fBodyAcc-std()-Z*  
    10  
    -0.9872248 - 0.6871242  
    Mean Standard deviation of the Fast Fourier Transformation of the body linear acceleration along the Z axis, averaged for different measurements on the subject  

49. *fBodyAcc-meanFreq()-X*  
    9  
    -0.635913 - 0.1591236  
    Weighted average of the frequency component along X, averaged for different measurements on the subject   

50. *fBodyAcc-meanFreq()-Y*  
    10  
    -0.3795185 - 0.4665282  
    Weighted average of the frequency component along Y, averaged for different measurements on the subject  

51. *fBodyAcc-meanFreq()-Z*  
    10  
    -0.5201148 - 0.4025326  
    Fast Fourier Transformation applied to the weighted average of the frequency component along Z, averaged for different measurements on the subject  

52. *fBodyAccJerk-mean()-X*  
    10  
    -0.9946308 - 0.4743173  
    Mean of the Fast Fourier Transformation applied to the linear accelaration along the X axis averaged on the time, averaged for different measurements on the subject 

53. *fBodyAccJerk-mean()-Y*  
    10  
    -0.9893988 - 0.2767169  
    Mean of the Fast Fourier Transformation applied to the linear accelaration along the Y axis averaged on the time, averaged for different measurements on the subject  

54. *fBodyAccJerk-mean()-Z*  
    10  
    -0.9920184 - 0.1577757  
    Mean of the Fast Fourier Transformation applied to the linear accelaration along the Z axis averaged on the time, averaged for different measurements on the subject  

55. *fBodyAccJerk-std()-X*  
    10  
    -0.9950738 - 0.4768039   
    Standard deviation of the Fast Fourier Transformation applied to the linear body accelaration along the X axis averaged on the time, averaged for different measurements on the subject  

56. *fBodyAccJerk-std()-Y*  
    10  
    -0.9904681 - 0.3497713  
    Standard deviation of the Fast Fourier Transformation applied to the linear body accelaration along the Y axis averaged on the time, averaged for different measurements on the subject  

57. *fBodyAccJerk-std()-Z*  
    12  
    -0.9931078 - -0.006236475  
    Standard deviation of the Fast Fourier Transformation applied to the linear body accelaration along the Z axis averaged on the time, averaged for different measurements on the subject

58. *fBodyAccJerk-meanFreq()-X*  
    9  
    -0.576044 - 0.3314493  
    Fast Fourier Transformation applied to the weighted average of the frequency component along X of the body acceleration averaged on the time, averaged for different measurements on the subject  

59. *fBodyAccJerk-meanFreq()-Y*  
    10  
    -0.6019714 - 0.1956773  
    Fast Fourier Transformation applied to the weighted average of the frequency component along Y of the body acceleration averaged on the time, averaged for different measurements on the subject  

60. *fBodyAccJerk-meanFreq()-Z*  
    10  
    -0.6275555 - 0.2301079  
    Fast Fourier Transformation applied to the weighted average of the frequency component along Z of the body acceleration averaged on the time, averaged for different measurements on the subject  

61. *fBodyGyro-mean()-X*  
    10  
    -0.9931226 - 0.4749624  
    Mean of the Fast Fourier Transformation applied to the angular velocity relative to the X axis. Average on the different measurements on the subject.    

62. *fBodyGyro-mean()-Y*  
    10  
    -0.9940255 - 0.328817  
    Mean of the Fast Fourier Transformation applied to the angular velocity relative to the Y axis. Average on the different measurements on the subject.    

63. *fBodyGyro-mean()-Z*  
    10  
    -0.9859578 - 0.4924144  
    Mean of the Fast Fourier Transformation applied to the angular velocity relative to the Z axis. Average on the different measurements on the subject.    

64. *fBodyGyro-std()-X*  
    10  
    -0.9946522 - 0.1966133  
    Standard deviation of the Fast Fourier Transformation applied to the angular velocity relative to the X axis. Average on the different measurements on the subject.      

65. *fBodyGyro-std()-Y*  
    10  
    -0.9943531 - 0.6462336  
    Standard deviation of the Fast Fourier Transformation applied to the angular velocity relative to the Y axis. Average on the different measurements on the subject.  

66. *fBodyGyro-std()-Z*  
    10  
    -0.9867253 - 0.5224542  
    Standard deviation of the Fast Fourier Transformation applied to the angular velocity relative to the Z axis. Average on the different measurements on the subject.  

67. *fBodyGyro-meanFreq()-X*  
    10  
    -0.3957702 - 0.2492094  
    Fast Fourier Transformation applied to the weighted average of the frequency component along the X axis of the angualar velocity. Averaged for different measurements on the subject.  

68. *fBodyGyro-meanFreq()-Y*  
    10  
    -0.6668148 - 0.2731413  
    Fast Fourier Transformation applied to the weighted average of the frequency component along the Y axis of the angualar velocity. Averaged for different measurements on the subject.  

69. *fBodyGyro-meanFreq()-Z*  
    10  
    -0.5074909 - 0.3770741  
    Fast Fourier Transformation applied to the weighted average of the frequency component along the Z axis of the angualar velocity. Averaged for different measurements on the subject.  

70. *fBodyAccMag-mean()*  
    10  
    -0.9868006 - 0.5866376  
    Mean of the Fast Fourier Transformation applied to the Euclidean norm of the body acceleration, averaged for different measures on the subject.  

71. *fBodyAccMag-std()*  
    10  
    -0.9876485 - 0.1786846  
    Standard deviation of the Fast Fourier Transformation applied to the Euclidean norm of the body acceleration, averaged for different measures on the subject.  

72. *fBodyAccMag-meanFreq()*  
    9  
    -0.312338 - 0.4358469  
    Fast Fourier Transformation applied to the weighted average of the frequency component of the Euclidean norm of the body acceleration. Averaged for different measurements on the subject.  

73. *fBodyBodyAccJerkMag-mean()*  
    10  
    -0.9939983 - 0.5384048  
    Mean of the Fast Fourier Transformation applied to the Euclidean norm of the body acceleration averaged on the time. Averaged for different measurements on the subject.  

74. *fBodyBodyAccJerkMag-std()*  
    10  
    -0.9943667 - 0.3163464  
    Standard deviation of the Fast Fourier Transformation applied to the Euclidean norm of the body acceleration averaged on the time. Averaged for different measurements on the subject.  

75. *fBodyBodyAccJerkMag-meanFreq()*  
    10  
    -0.1252104 - 0.4880885  
    Mean of the Fast Fourier Transformation applied to the Euclidean norm of the body acceleration averaged on the time and weighted average of the frequency. Averaged for different measurements on the subject.    

76. *fBodyBodyGyroMag-mean()*  
    10  
    -0.9865352 - 0.2039798  
    Mean of Euclidean norm of the angular velocity trasformed by the Fast Fourier Transformation. Averaged on different measurements on the subject.  

77. *fBodyBodyGyroMag-std()*  
    10  
    -0.9814688 - 0.2366597  
    Standard deviation of the mean of Euclidean norm of the angular velocity trasformed by the Fast Fourier Transformation. Averaged on different measurements on the subject.    

78. *fBodyBodyGyroMag-meanFreq()*   
    10  
    -0.4566387 - 0.4095216  
    Mean of the Euclidean norm of the angular velocity trasformed by the Fast Fourier Transformation and weighted average of the frequency. Averaged on different measurements on the subject.  

79. *fBodyBodyGyroJerkMag-mean()*  
    10  
    -0.9976174 - 0.1466186 
    Mean of the Fast Fourier Transformation applied to the Euclidean norm of the body acceleration averaged on the time and weighted average of the frequency. Averaged for different measurements on the subject.  

80. *fBodyBodyGyroJerkMag-std()*  
    10  
    -0.9975852 - 0.2878346  
    Standard deviation of the mean of the Fast Fourier Transformation applied to the Euclidean norm of the angula velocity averaged on the time. Averaged for different measurements on the subject.  

81. *fBodyBodyGyroJerkMag-meanFreq()*  
    10  
    -0.1829236 - 0.4263017 
    Fast Fourier Transformation applied to the Euclidean norm of the angular velocity averaged on the time and weighted average of the frequency. Averaged for different measurements on the subject.   

82. *angle(tBodyAccMean,gravity)*  
    10  
    -0.1630426 - 0.129154   
    Angle between the mean body acceleration and the gravity vectors. Averaged for different measurements on the subject.  

83. *angle(tBodyAccJerkMean,gravityMean)*  
    9  
    -0.120554 - 0.20326  
    Angle between the vector of the mean body acceleration averaged in time and the mean gravity vector. Averaged for different measurements on the subject.  

84. *angle(tBodyGyroMean,gravityMean)*  
    10  
    -0.3893051 - 0.4441012  
    Angle between the vector mean angular velocity and the vector mean gravity. Averaged for different measurements on the subject.  

85. *angle(tBodyGyroJerkMean,gravityMean)*  
    10  
    -0.2236721 - 0.1823848  
    Angle between the vector of the mean angular velocity averaged in time and the mean gravity vector. Averaged for different measurements on the subject.  

86. *angle(X,gravityMean)*  
    10  
    -0.9471165 - 0.7377844  
    Angle between the X axis and the mean gravity vector. Averaged for different measurements on the subject.  

87. *angle(Y,gravityMean)*  
    10  
    -0.8745677 - 0.4247612  
    Angle between the Y axis and the mean gravity vector. Averaged for different measurements on the subject.  

88. *angle(Z,gravityMean)*  
    10  
    -0.8736494 - 0.3904444  
    Angle between the Z axis and the mean gravity vector. Averaged for different measurements on the subject.  
