field
secondMoveAI <- function(field) {
  #Check for A#
  if (field %>% slice(1) %>% sum == 5) {
    field[2, 1] <<- +1
  } else if (field %>% select(A) %>% sum == 5) {
    field[1, 2] <<- +1
    startCon <- 1
  }
  
  #Check for B#
  if (field[2, 3] | field[3, 2] | field[3, 3] == 4) {
    field[1, 3] <<- +1
    startCon <<- 2
  }
  
  #Check for C#
  if (field[2, 2] == 4) {
    field[3, 3] <<- +1
    startCon <<- 3
  }
}
#Third Move Computer#
thirdMoveAI <- function(field) {
  if (startCon == 1) {
    field[2, 2] <<- +1
  } else if (startCon == 2) {
    field[3, 1] <<- +1
  }
}  