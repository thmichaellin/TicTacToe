library(tidyverse)
library(matricks)
source("winlossFunctions.R")
source("randomPlay.R")
source("startingMoves.R")

#Create playing field#
field <- matrix(rep(0,9), 3, 3)
rownames(field) <- c("1", "2", "3")
colnames(field) <- c("A", "B", "C")
field <- data.frame(field)

#First move computer#
field[1,1] <- 1
field

#First move player (row, column)#
input()
#Second move AI#
secondMoveAI(field)
field

#Second move player#
input()

#Third move AI#
winCheck(field)
lossCheck(field)
thirdMoveAI(field)
if(sum(field) == 10) {
  randomPlay(field)
}
field

#Third move player#
input()

#Fourth move AI#
winCheck(field)
lossCheck(field)
if(sum(field) == 15) {
  randomPlay(field)
}
field

#Fourth move player#
input()

#Final move AI#
winCheck(field)
lossCheck(field)
if(sum(field) == 20) {
  randomPlay(field)
}
field
