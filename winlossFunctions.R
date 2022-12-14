#Loss Cond. Check#
lossCheck <<- function(field) {
  if (field %>% select(A) %>% sum == 8) {
    field[which(field[,1] == 0), 1] <<- +1
  } else if (field %>% select(B) %>% sum == 8) {
    field[which(field[,2] == 0), 2] <<- +1
  } else if (field %>% select(C) %>% sum == 8) {
    field[which(field[,3] == 0), 3] <<- +1
  } else if (field %>% slice(1) %>% sum == 8) {
    field[1, which(field[1,] == 0)] <<- +1
  } else if (field %>% slice(2) %>% sum == 8) {
    field[2, which(field[2,] == 0)] <<- +1
  } else if (field %>% slice(3) %>% sum == 8) {
    field[3, which(field[3,] == 0)] <<- +1
  } else if (sum(diag(as.matrix(field))) == 8) {
    if (which(diag(as.matrix(field)) == 0) == 1) {
      field[1,1] <<- +1
    } else if (which(diag(as.matrix(field)) == 0) == 2) {
      field[2, 2] <<- +1
    } else {
      field[3, 3] <<- +1
    }
  } else if (sum(antidiag(as.matrix(field))) == 8) {
    if (which(antidiag(as.matrix(field)) == 0) == 1) {
      field[1,3] <<- +1
    } else if (which(antidiag(as.matrix(field)) == 0) == 2) {
      field[2, 2] <<- +1
    } else {
      field[3, 1] <<- +1
    }
  }
}

#Win Cond. Check#
winCheck <<- function(field) {
  if (field %>% select(A) %>% sum == 2) {
    field[which(field[,1] == 0), 1] <<- +1
  } else if (field %>% select(B) %>% sum == 2) {
    field[which(field[,2] == 0), 2] <<- +1
  } else if (field %>% select(C) %>% sum == 2) {
    field[which(field[,3] == 0), 3] <<- +1
  } else if (field %>% slice(1) %>% sum == 2) {
    field[1, which(field[1,] == 0)] <<- +1
  } else if (field %>% slice(2) %>% sum == 2) {
    field[2, which(field[2,] == 0)] <<- +1
  } else if (field %>% slice(3) %>% sum == 2) {
    field[3, which(field[3,] == 0)] <<- +1
  } else if (sum(diag(as.matrix(field))) == 2) {
    if (which(diag(as.matrix(field)) == 0) == 1) {
      field[1,1] <<- +1
    } else if (which(diag(as.matrix(field)) == 0) == 2) {
      field[2, 2] <<- +1
    } else {
      field[3, 3] <<- +1
    }
  } else if (sum(antidiag(as.matrix(field))) == 2) {
    if (which(antidiag(as.matrix(field)) == 0) == 1) {
      field[1,3] <<- +1
    } else if (which(antidiag(as.matrix(field)) == 0) == 2) {
      field[2, 2] <<- +1
    } else {
      field[3, 1] <<- +1
    }
  }
}

#Player input function#
#Where Human input == 4 and Computer input == 1 #

input <- function(rowNum, colNum) {
  field[rowNum, colNum] <<- +4
  return(field)
}