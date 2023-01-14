# Project-Euler
Solutions to Project Euler problems written in R

Problem 1
lines (21 sloc)  514 Bytes

problem_1 <- function (number){
  # Starts a counter
  sum.count <- 0
  # Loops for the input (user defined)
  for (i in 1:number){
    # If i modulo 3 is 0 then divisible by 3.
    if (i %% 3 == 0){
      sum.count = sum.count + i
    }
    # If i modulo 5 is 0 then divisible by 5.
    else if (i %% 5 == 0){
      sum.count = sum.count + i
    }
    # Just returns the same sum.
    else sum.count = sum.count
  }
  # Prints the sum answer to console.
  sum.count
}

# Answer
problem_1(999
