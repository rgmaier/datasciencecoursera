course3 <- function(){
  
  list.of.packages <- c("dplyr")
  new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
  if(length(new.packages)) install.packages(new.packages)
  library("dplyr")
  
  delimiter <- rep(16, times=561)
  trainSetX <- read.fwf("X_train.txt", delimiter)
  testSetX <- read.fwf("X_test.txt", delimiter)
  
  trainSetY <- read.csv("y_train.txt", header=F)
  testSetY <- read.csv("y_test.txt", header=F)
  
  subjectTrain <- read.csv("subject_train.txt", header=F)
  subjectTest <- read.csv("subject_test.txt", header=F)
  
  subjectComplete <- rbind(subjectTrain, subjectTest)
  colnames(subjectComplete) <- c("subjectID")
  
  features <- read.csv("features.txt", header=F, sep=" ")
  activityLabels <- read.csv("activity_labels.txt", header=F, sep=" ")
  colnames(activityLabels) = c("activityID","activityLabel")
  
  dataSetComplete <- rbind(trainSetX, testSetX)
  rowLabelsComplete <- rbind(trainSetY, testSetY)
  
  colnames(dataSetComplete) <- features$V2
  colnames(rowLabelsComplete) <- c("activityID")
  
  dataSetComplete$ID <- seq.int(nrow(dataSetComplete))
  rowLabelsComplete$ID <- seq.int(nrow(rowLabelsComplete))
  
  data <- merge(dataSetComplete,rowLabelsComplete, by="ID")
  data <- data[,-which(names(data) %in% c("ID"))]
  
  data <- merge(data,activityLabels, by="activityID")
  data <- data[,-which(names(data) %in% c("activityID"))]
  
  #Final result for steps 1- 4
  data <- select(data,contains(c("mean()","std()","activityLabel")))
  
  step5 <- data
  
  step5$ID <- seq.int(nrow(step5))
  subjectComplete$ID <- seq.int(nrow(subjectComplete))
  
  step5 <- merge(step5, subjectComplete,)
  
}