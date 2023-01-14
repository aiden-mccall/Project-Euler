Project Euler
================
Aiden McCall
2023-01-14

## Problem Solutions

These are my solutions to Project Euler questions; the answers are not
intended to be the most efficient solutions possible and more so
programming practise. I will be trying to stick to the outlined ‘rules’,
specifically the ‘one-minute rule’ that your program cannot take longer
than one minute to run.

If you are hoping to solve any of these problems, I would urge you to
not look at the solutions and use the opportunity to develop problem
solving skills both inside and outside any programming language.

## Problem 1

``` r
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
problem_1(999)
```

    ## [1] 233168
