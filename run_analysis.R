

 library(plyr)

 dataX_train <- read.table("X_train.txt")
 dataY_train <- read.table("Y_train.txt")
 dataX_test <- read.table("X_test.txt")
 dataY_test <- read.table("Y_test.txt")
 
 dataactivity_labels <- read.table("activity_labels.txt")
 datafeatures <- read.table("features.txt")
 datasubject_train <- read.table("subject_train.txt")
 datasubject_test <- read.table("subject_test.txt")

 
 
 databody_acc_x_test <- read.table("body_acc_x_test.txt")
 databody_acc_y_test <- read.table("body_acc_y_test.txt")
 databody_acc_z_test <- read.table("body_acc_z_test.txt")
 databody_gyro_x_test <- read.table("body_gyro_x_test.txt")
 databody_gyro_y_test <- read.table("body_gyro_y_test.txt")
 databody_gyro_z_test <- read.table("body_gyro_z_test.txt") 
 datatotal_acc_x_test <- read.table("total_acc_x_test.txt")
 datatotal_acc_y_test <- read.table("total_acc_y_test.txt")
 datatotal_acc_z_test <- read.table("total_acc_z_test.txt")

 
 
 databody_acc_x_train <- read.table("body_acc_x_train.txt")
 databody_acc_y_train <- read.table("body_acc_y_train.txt")
 databody_acc_z_train <- read.table("body_acc_z_train.txt")
 databody_gyro_x_train <- read.table("body_gyro_x_train.txt")
 databody_gyro_y_train <- read.table("body_gyro_y_train.txt")
 databody_gyro_z_train <- read.table("body_gyro_z_train.txt") 
 datatotal_acc_x_train <- read.table("total_acc_x_train.txt")
 datatotal_acc_y_train <- read.table("total_acc_y_train.txt")
 datatotal_acc_z_train <- read.table("total_acc_z_train.txt")


  names(datasubject_train)[1] <- "SUBJECT"
  names(dataY_train)[1] <- "ACTIVITY"

  dataTemp <- data.frame(dataY_train,datasubject_train)
  dataTemp <- data.frame(dataTemp,dataX_train) 

  names(dataY_test)[1] <- "ACTIVITY"
  names(datasubject_test)[1] <- "SUBJECT"

  dataTemp1 <- data.frame(dataY_test,datasubject_test)
  dataTemp1 <- data.frame(dataTemp1,dataX_test)


  //Se cambian los nombres de las columnas para las features.

  i<-3
  j<-1

  for(i in 3:564){  names(dataTemp)[i] <- toString(datafeatures[j,2])
   j<-j+1
  if(j == 562){
   break
  }
 }

  //Se añaden las medidas para la parte train.
  // (4) Appropriately labels the data set with descriptive variable names. 

  dataTemp<-data.frame(dataTemp,databody_acc_x_train)
  
  i<-564
  j<-1

  for(i in 564:691){  names(dataTemp)[i] <- paste("bodyAccX",toString(j))
   j<-j+1
   if(j == 129){
   break
  }
 }

  dataTemp<-data.frame(dataTemp,databody_acc_y_train)

  i<-692
  j<-1

  for(i in 692:819){  names(dataTemp)[i] <- paste("bodyAccY",toString(j))
   j<-j+1
   if(j == 129){
   break
  }
 }

 dataTemp<-data.frame(dataTemp,databody_acc_z_train)

  i<-820
  j<-1

  for(i in 820:947){  names(dataTemp)[i] <- paste("bodyAccZ",toString(j))
   j<-j+1
   if(j == 129){
   break
  }
 }

 
 dataTemp<-data.frame(dataTemp,databody_gyro_x_train)

  i<-948
  j<-1

  for(i in 948:1075){  names(dataTemp)[i] <- paste("bodyGyroX",toString(j))
   j<-j+1
   if(j == 129){
   break
  }
 }

 dataTemp<-data.frame(dataTemp,databody_gyro_y_train)

  i<-1076
  j<-1

  for(i in 1076:1203){  names(dataTemp)[i] <- paste("bodyGyroY",toString(j))
   j<-j+1
   if(j == 129){
   break
  }
 }

 dataTemp<-data.frame(dataTemp,databody_gyro_z_train)

  i<-1204
  j<-1

  for(i in 1204:1331){  names(dataTemp)[i] <- paste("bodyGyroZ",toString(j))
   j<-j+1
   if(j == 129){
   break
  }
 }

  dataTemp<-data.frame(dataTemp,datatotal_acc_x_train)

  i<-1332
  j<-1

  for(i in 1332:1459){  names(dataTemp)[i] <- paste("totalAccX",toString(j))
   j<-j+1
   if(j == 129){
   break
  }
 }

 dataTemp<-data.frame(dataTemp,datatotal_acc_y_train)

  i<-1460
  j<-1

  for(i in 1460:1587){  names(dataTemp)[i] <- paste("totalAccY",toString(j))
   j<-j+1
   if(j == 129){
   break
  }
 }

 dataTemp<-data.frame(dataTemp,datatotal_acc_z_train)

  i<-1588
  j<-1

  for(i in 1588:1715){  names(dataTemp)[i] <- paste("totalAccZ",toString(j))
   j<-j+1
   if(j == 129){
   break
  }
 }


 


  //Se cambian los nombres de las features para la parte test.

  i<-3
  j<-1

  for(i in 3:564){  names(dataTemp1)[i] <- toString(datafeatures[j,2])
   j<-j+1
  if(j == 562){
   break
  }
 }


  //Se añaden las medidas para la parte test.

  dataTemp1<-data.frame(dataTemp1,databody_acc_x_test)
  
  i<-564
  j<-1

  for(i in 564:691){  names(dataTemp1)[i] <- paste("bodyAccX",toString(j))
   j<-j+1
   if(j == 129){
   break
  }
 }

  dataTemp1<-data.frame(dataTemp1,databody_acc_y_test)

  i<-692
  j<-1

  for(i in 692:819){  names(dataTemp1)[i] <- paste("bodyAccY",toString(j))
   j<-j+1
   if(j == 129){
   break
  }
 }

 dataTemp1<-data.frame(dataTemp1,databody_acc_z_test)

  i<-820
  j<-1

  for(i in 820:947){  names(dataTemp1)[i] <- paste("bodyAccZ",toString(j))
   j<-j+1
   if(j == 129){
   break
  }
 }

 
 dataTemp1<-data.frame(dataTemp1,databody_gyro_x_test)

  i<-948
  j<-1

  for(i in 948:1075){  names(dataTemp1)[i] <- paste("bodyGyroX",toString(j))
   j<-j+1
   if(j == 129){
   break
  }
 }

 dataTemp1<-data.frame(dataTemp1,databody_gyro_y_test)

  i<-1076
  j<-1

  for(i in 1076:1203){  names(dataTemp1)[i] <- paste("bodyGyroY",toString(j))
   j<-j+1
   if(j == 129){
   break
  }
 }

 dataTemp1<-data.frame(dataTemp1,databody_gyro_z_test)

  i<-1204
  j<-1

  for(i in 1204:1331){  names(dataTemp1)[i] <- paste("bodyGyroZ",toString(j))
   j<-j+1
   if(j == 129){
   break
  }
 }

  dataTemp1<-data.frame(dataTemp1,datatotal_acc_x_test)

  i<-1332
  j<-1

  for(i in 1332:1459){  names(dataTemp1)[i] <- paste("totalAccX",toString(j))
   j<-j+1
   if(j == 129){
   break
  }
 }

 dataTemp1<-data.frame(dataTemp1,datatotal_acc_y_test)

  i<-1460
  j<-1

  for(i in 1460:1587){  names(dataTemp1)[i] <- paste("totalAccY",toString(j))
   j<-j+1
   if(j == 129){
   break
  }
 }

 dataTemp1<-data.frame(dataTemp1,datatotal_acc_z_test)

  i<-1588
  j<-1

  for(i in 1588:1715){  names(dataTemp1)[i] <- paste("totalAccZ",toString(j))
   j<-j+1
   if(j == 129){
   break
  }
 }



  //(2). Extracts only the measurements on the mean and standard deviation for each measurement.


  meanBodyAccX <- c(1:10299)
  meanBodyAccY <- c(1:10299)
  meanBodyAccZ <- c(1:10299)
  meanBodyGyroX <- c(1:10299)
  meanBodyGyroY <- c(1:10299)
  meanBodyGyroZ <- c(1:10299)
  meanTotalAccX <- c(1:10299)
  meanTotalAccY <- c(1:10299)
  meanTotalAccZ <- c(1:10299)


  dataTempTotal <- rbind(dataTemp,dataTemp1)

  //Calculo de las mean and std for each measurement


  i<-1
  for(i in 1:10299){
    meanBodyAccX[i] <- mean(dataTempTotal$bodyAccX.1[i]:dataTempTotal$bodyAccX.128[i])
  }

  i<-1
  for(i in 1:10299){
    meanBodyAccY[i] <- mean(dataTempTotal$bodyAccY.1[i]:dataTempTotal$bodyAccY.128[i])
  }

  i<-1
  for(i in 1:10299){
    meanBodyAccZ[i] <- mean(dataTempTotal$bodyAccZ.1[i]:dataTempTotal$bodyAccZ.128[i])
  }


  
  i<-1
  for(i in 1:10299){
    meanBodyGyroX[i] <- mean(dataTempTotal$bodyGyroX.1[i]:dataTempTotal$bodyGyroX.128[i])
  }

  i<-1
  for(i in 1:10299){
    meanBodyGyroY[i] <- mean(dataTempTotal$bodyGyroY.1[i]:dataTempTotal$bodyGyroY.128[i])
  }

  i<-1
  for(i in 1:10299){
    meanBodyGyroZ[i] <- mean(dataTempTotal$bodyGyroZ.1[i]:dataTempTotal$bodyGyroZ.128[i])
  }

  
    i<-1
  for(i in 1:10299){
    meanTotalAccX[i] <- mean(dataTempTotal$totalAccX.1[i]:dataTempTotal$totalAccX.128[i])
  }

  i<-1
  for(i in 1:10299){
    meanTotalAccY[i] <- mean(dataTempTotal$totalAccY.1[i]:dataTempTotal$totalAccY.128[i])
  }

  dataTempTotal <- data.frame(dataTempTotal,meanBodyAccX)

  i<-1
  for(i in 1:10299){
    meanTotalAccZ[i] <- mean(dataTempTotal$totalAccZ.1[i]:dataTempTotal$totalAccZ.128[i])
  }


  dataTempTotal$meanBodyAccX <- NULL


  sdBodyAccX <- c(1:10299)
  sdBodyAccY <- c(1:10299)
  sdBodyAccZ <- c(1:10299)
  sdBodyGyroX <- c(1:10299)
  sdBodyGyroY <- c(1:10299)
  sdBodyGyroZ <- c(1:10299)
  sdTotalAccX <- c(1:10299)
  sdTotalAccY <- c(1:10299)
  sdTotalAccZ <- c(1:10299)


  i<-1
  for(i in 1:10299){
    sdBodyAccX[i] <- sd(dataTempTotal$bodyAccX.1[i]:dataTempTotal$bodyAccX.128[i])
  }

  
  i<-1
  for(i in 1:10299){
    sdBodyAccY[i] <- sd(dataTempTotal$bodyAccY.1[i]:dataTempTotal$bodyAccY.128[i])
  }

  i<-1
  for(i in 1:10299){
    sdBodyAccZ[i] <- sd(dataTempTotal$bodyAccZ.1[i]:dataTempTotal$bodyAccZ.128[i])
  }

  
  i<-1
  for(i in 1:10299){
    sdBodyGyroX[i] <- sd(dataTempTotal$bodyGyroX.1[i]:dataTempTotal$bodyGyroX.128[i])
  }

  i<-1
  for(i in 1:10299){
    sdBodyGyroY[i] <- sd(dataTempTotal$bodyGyroY.1[i]:dataTempTotal$bodyGyroY.128[i])
  }

  i<-1
  for(i in 1:10299){
    sdBodyGyroZ[i] <- sd(dataTempTotal$bodyGyroZ.1[i]:dataTempTotal$bodyGyroZ.128[i])
  }
  
  i<-1
  for(i in 1:10299){
    sdTotalAccX[i] <- sd(dataTempTotal$totalAccX.1[i]:dataTempTotal$totalAccX.128[i])
  }


  i<-1
  for(i in 1:10299){
    sdTotalAccY[i] <- sd(dataTempTotal$totalAccY.1[i]:dataTempTotal$totalAccY.128[i])
  }

  i<-1
  for(i in 1:10299){
    sdTotalAccZ[i] <- sd(dataTempTotal$totalAccZ.1[i]:dataTempTotal$totalAccZ.128[i])
  }


 //(3) Uses descriptive activity names to name the activities in the data set

 
  i<-1
  for(i in 1:10299){
   if(dataTempTotal$ACTIVITY[i] == 1){
     dataTempTotal$ACTIVITY[i]<- "WALKING"
   }
   if(dataTempTotal$ACTIVITY[i] == 2){
     dataTempTotal$ACTIVITY[i]<- "WALKING_UPSTAIRS"
   }
   if(dataTempTotal$ACTIVITY[i] == 3){
     dataTempTotal$ACTIVITY[i]<- "WALKING_DOWNSTAIRS"
   }
   if(dataTempTotal$ACTIVITY[i] == 4){
     dataTempTotal$ACTIVITY[i]<- "SITTING"
   }
   if(dataTempTotal$ACTIVITY[i] == 5){
     dataTempTotal$ACTIVITY[i]<- "STANDING"
   }
   if(dataTempTotal$ACTIVITY[i] == 6){
     dataTempTotal$ACTIVITY[i]<- "LAYING"
   }
 
  }



  (5)  From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


  newDataTemp <- dataTempTotal
  newDataTemp[564:1715] <- list(NULL)

  aux_calculus <- list(rep(0, 561))

  k<-1  
  j<-1
  subject<-1
  counter<-0

  matrix_aux <-matrix(0, nrow = 30, ncol = 6)

  for(k in 1:10299){

   for(subject in 1:30){
    if(newDataTemp$SUBJECT[k] == subject){

       if(newDataTemp$ACTIVITY[k] == "WALKING"){

          count<-count+1
      
          for(j in 3:563){
            aux_calculus[[1]][j] <- aux_calculus[[1]][j] + as.numeric(newDataTemp[k,j])
          }
          matrix_aux[subject,1] <- aux_calculus[[1]][j]/count

       }

       j<-1
       count<-0       
       aux_calculus <- list(rep(0, 561))
       if(newDataTemp$ACTIVITY[k] == "WALKING_UPSTAIRS"){

           count<-count+1
      
           for(j in 3:563){
            aux_calculus[[1]][j] <- aux_calculus[[1]][j] + as.numeric(newDataTemp[k,j])
          }
          matrix_aux[subject,2] <- aux_calculus[[1]][j]/count
       }

       
       j<-1
       count<-0       
       aux_calculus <- list(rep(0, 561))
       if(newDataTemp$ACTIVITY[k] == "WALKING_UPSTAIRS"){

          count<-count+1
      
          for(j in 3:563){
            aux_calculus[[1]][j] <- aux_calculus[[1]][j] + as.numeric(newDataTemp[k,j])
          }
          matrix_aux[subject,3] <- aux_calculus[[1]][j]/count
       }

       
       j<-1
       count<-0
       aux_calculus <- list(rep(0, 561))
       if(newDataTemp$ACTIVITY[k] == "SITTING"){

          count<-count+1
      
          for(j in 3:563){
            aux_calculus[[1]][j] <- aux_calculus[[1]][j] + as.numeric(newDataTemp[k,j])
          }
          matrix_aux[subject,4] <- aux_calculus[[1]][j]/count
       }
 
       
       j<-1
       count<-0
       aux_calculus <- list(rep(0, 561))
       if(newDataTemp$ACTIVITY[k] == "STANDING"){

           count<-count+1
      
          for(j in 3:563){
            aux_calculus[[1]][j] <- aux_calculus[[1]][j] + as.numeric(newDataTemp[k,j])
          }
          matrix_aux[subject,5] <- aux_calculus[[1]][j]/count
       }

       
       j<-1
       count<-0
       aux_calculus <- list(rep(0, 561))
       if(newDataTemp$ACTIVITY[k] == "LAYING"){

          count<-count+1
      
          for(j in 3:563){
            aux_calculus[[1]][j] <- aux_calculus[[1]][j] + as.numeric(newDataTemp[k,j])
          }
          matrix_aux[subject,6] <- aux_calculus[[1]][j]/count
       }

          
          
       }
    }
 }   

 average <- matrix(0,nrow =1,ncol=561)

 
        

  
    data_aux <- subset( newDataTemp,newDataTemp$ACTIVITY == "WALKING" & newDataTemp$SUBJECT == 1) 
    j<-3
    i<-1
    for(j in 3:563){
      for(i in 1:dim(data_aux)[1]){
       average[1,j-2] <- average[1,j-2] + data_aux[i,j]
      }
    }
    j<-3
    for(j in 3:563){
      
       average[1,j-2] <- average[1,j-2]/dim(data_aux)[1]
      
    }

    
    aux<-cbind(1,"WALKING",average)


  subject<-2
  for(subject in 2:30){
    
    data_aux <- subset( newDataTemp,newDataTemp$ACTIVITY == "WALKING" & newDataTemp$SUBJECT == subject) 
    j<-3
    i<-1
    for(j in 3:563){
      for(i in 1:dim(data_aux)[1]){
       average[1,j-2] <- average[1,j-2] + data_aux[i,j]
      }
    }
    j<-3
    for(j in 3:563){
      
       average[1,j-2] <- average[1,j-2]/dim(data_aux)[1]
      
    }

    
    aux1<-cbind(subject,"WALKING",average)    
    aux<-rbind(aux,aux1)
  

  }

  
   
  subject<-1
  for(subject in 1:30){
    
    data_aux <- subset( newDataTemp,newDataTemp$ACTIVITY == "WALKING_UPSTAIRS" & newDataTemp$SUBJECT == subject) 
    j<-3
    i<-1
    for(j in 3:563){
      for(i in 1:dim(data_aux)[1]){
       average[1,j-2] <- average[1,j-2] + data_aux[i,j]
      }
    }
    j<-3
    for(j in 3:563){
      
       average[1,j-2] <- average[1,j-2]/dim(data_aux)[1]
      
    }

    
    aux1<-cbind(subject,"WALKING_UPSTAIRS",average)    
    aux<-rbind(aux,aux1)
  

  }

  
  


  subject<-1
  for(subject in 1:30){
    
    data_aux <- subset( newDataTemp,newDataTemp$ACTIVITY == "WALKING_DOWNSTAIRS" & newDataTemp$SUBJECT == subject) 
    j<-3
    i<-1
    for(j in 3:563){
      for(i in 1:dim(data_aux)[1]){
       average[1,j-2] <- average[1,j-2] + data_aux[i,j]
      }
    }
    j<-3
    for(j in 3:563){
      
       average[1,j-2] <- average[1,j-2]/dim(data_aux)[1]
      
    }

    
    aux1<-cbind(subject,"WALKING_DOWNSTAIRS",average)    
    aux<-rbind(aux,aux1)
  

  }




  subject<-1
  for(subject in 1:30){
    
    data_aux <- subset( newDataTemp,newDataTemp$ACTIVITY == "SITTING" & newDataTemp$SUBJECT == subject) 
    j<-3
    i<-1
    for(j in 3:563){
      for(i in 1:dim(data_aux)[1]){
       average[1,j-2] <- average[1,j-2] + data_aux[i,j]
      }
    }
    j<-3
    for(j in 3:563){
      
       average[1,j-2] <- average[1,j-2]/dim(data_aux)[1]
      
    }

    
    aux1<-cbind(subject,"SITTING",average)    
    aux<-rbind(aux,aux1)
  

  }




  subject<-1
  for(subject in 1:30){
    
    data_aux <- subset( newDataTemp,newDataTemp$ACTIVITY == "STANDING" & newDataTemp$SUBJECT == subject) 
    j<-3
    i<-1
    for(j in 3:563){
      for(i in 1:dim(data_aux)[1]){
       average[1,j-2] <- average[1,j-2] + data_aux[i,j]
      }
    }
    j<-3
    for(j in 3:563){
      
       average[1,j-2] <- average[1,j-2]/dim(data_aux)[1]
      
    }

    
    aux1<-cbind(subject,"STANDING",average)    
    aux<-rbind(aux,aux1)
  

  }



  subject<-1
  for(subject in 1:30){
    
    data_aux <- subset( newDataTemp,newDataTemp$ACTIVITY == "LAYING" & newDataTemp$SUBJECT == subject) 
    j<-3
    i<-1
    for(j in 3:563){
      for(i in 1:dim(data_aux)[1]){
       average[1,j-2] <- average[1,j-2] + data_aux[i,j]
      }
    }
    j<-3
    for(j in 3:563){
      
       average[1,j-2] <- average[1,j-2]/dim(data_aux)[1]
      
    }

    
    aux1<-cbind(subject,"LAYING",average)    
    aux<-rbind(aux,aux1)
  

  }



  write.table(dataset, "dataset.txt", sep="\t")
   

   
    
    
       
   




 
