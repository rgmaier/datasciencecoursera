course3 <- function(){
  
  delimiter <- rep(16, times=561)
  trainSetX <- read.fwf("X_train.txt", delimiter)
  testSetX <- read.fwf("X_test.txt", delimiter)
  
  trainSetY <- read.csv("y_train.txt", header=F)
  testSetY <- read.csv("y_test.txt", header=F)
  
  features <- read.csv("features.txt", header=F, sep= " ")

}