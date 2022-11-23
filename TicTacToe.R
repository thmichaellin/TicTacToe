library(tidyverse)
library(matricks)
source("winlossFunctions.R")
#Where Human input == 4 and Computer input == 1 #

input <- function(colNum, rowNum) {
  field[rowNum, colNum] <<- +4
  return(field)
}

field <- matrix(rep(0,9), 3, 3)
rownames(field) <- c("1", "2", "3")
colnames(field) <- c("A", "B", "C")
field <- data.frame(field)

field

#example loss defense#
input(2,2)
input(3,1)
lossCheck(field)

#example win capitalization#
field[1,1] <- 1
field[2,2] <- 1
winCheck(field)
