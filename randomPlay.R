randomPlay <- function(field){
  posRow <- as.numeric(which(field == 0, arr.ind=T)[1,][1])
  posCol <- as.numeric(which(field == 0, arr.ind=T)[1,][2])
  field[posRow, posCol] <<- +1
}

