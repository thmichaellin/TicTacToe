library(tidyverse)
library(matricks)
source("winlossFunctions.R")
#Where Human input == 4 and Computer input == 1 #


#Create playing field#
field <- matrix(rep(0,9), 3, 3)
rownames(field) <- c("1", "2", "3")
colnames(field) <- c("A", "B", "C")
field <- data.frame(field)

#Player move 1 (row, column)#
input()

#AI Move 1#
if (field[2, 2] == 4) {
  field[1, 1] <- +1
} else {field[2, 2] <- +1}
field

#Player move 2#
input()

#AI Move 2#
if (field[2, 2] == 1){
  if (field[1, 2] == 0) {
    field[1, 2] <- +1
  } else {field[2, 1] <- +1}
} else {if (field[3, 1] == 0) {
  field[1, 3] <- +1
} else {field[3, 1] <- +1}}

field

#Player move 3#
input()

#AI Move 3#
winCheck(field)
lossCheck(field)
field

#Player move 4#
input()

#Ai Move 4#
winCheck(field)
lossCheck(field)
field

#Player Final move#
input()


