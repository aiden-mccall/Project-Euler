---
title: "Project Euler"
author: "Aiden McCall"
date: '2023-03-19'
output: github_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## Problem Solutions

These are my solutions to Project Euler questions; the answers are not intended to be the most efficient solutions possible and more so programming practise. I will be trying to stick to the outlined 'rules', specifically the 'one-minute rule' that your program cannot take longer than one minute to run.

If you are hoping to solve any of these problems, I would urge you to not look at the solutions and use the opportunity to develop problem solving skills both inside and outside any programming language.

## Problem 1

```{r Problem_1}
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

## Problem 2

```{r Problem_2}
problem_2 <- function(n){
 fib <- vector()
 fib_count <- vector()
 fib[1] <- 1
 fib[2] <- 2
 i = 2
 sum = 0
 while (fib[i] < n){
   i = i + 1
   fib[i] = fib[i-1] + fib[i-2]
 }
 # The loop will still run the last value.
 fib <- fib[1:(length(fib) - 1)]
 for (i in 1:length(fib)){
   if (fib[i] %% 2 == 0){
     sum = sum + fib[i] 
   }
 }
 sum
}

# Solution for 4 million
problem_2(4000000)
````

## Problem 3

````{r Problem_3}
problem_3 <- function(n){
  i = 2
  while (i*i <= n) {
    if (( n %% i ) != 0){
      i = i + 1
    }
    else {
      n <- n/i
    }
  }
  n
}

problem_3(600851475143)
````

## Problem 4

````{r Problem_4}
final_answer <- function(number) {
  # Set up a vector to start.
  units <- vector()

  for (i in 1:nchar(number)){
    units[i] <- number %% 10**(i)
    if (i != 1){
    units[i] <- units[i] - sum(units[1:i-1])
    }
  }

  for (j in 1:nchar(number)){
    units[j] <- units[j] / (10**(j-1))
  }

  forward <- format(units, scientific = FALSE)
  reverse <- rev( forward )

  if (all(forward == reverse)){
    palindrome <<- number
    # This is a check and not specifically necessary.
    palindrome.units <<- units
  }
  else{
    0
  }
}

palindrome <<- vector()
final <<- matrix(data = NA, nrow = 99, ncol = 99)
for (i in 900:999){
  for (j in 900:999){
    number = i * j
    final_answer(number)
  }
}


````

## Problem 5 
````{r Problem_5}
library(tictoc)

a <- 2520
number <- 1
sum.number <- vector()
sum.number <- 1 %% 2
tic()
while(a > 0){
  if(number %% 2 == 0 && number %% 3 == 0 && number %% 5 == 0 && number %% 7 == 0 && number %% 11 == 0){
  for (i in 1:20){
    sum.number[i] <- number %% i
  }
  }
  a <- sum(sum.number)
  number = number + 1
}
toc()
number
# answer, number = 232792561 - 1 = 232792560
# currently takes 1028.11 sec to run
# That is 17.1 minutes.
````

````{r Problem_5_quicker}

# Trying to make the method quicker - I think I should use a compiled language though.
a <- 1
number <- 1
sum.number <- vector()
sum.number <- 1 %% 2

tic()
while(a > 0){
  if(number %% 20 == 0 && number %% 19 == 0 && number %% 17 == 0 && number %% 16 == 0){
    if(number %% 15 == 0 && number %% 13 == 0 && number %% 13 == 0 && number %% 12 == 0){
    if(number %% 11 == 0 && number %% 10 == 0 && number %% 9 == 0 && number %% 8 == 0){
    if(number %% 7 == 0 && number %% 6 == 0 && number %% 5 == 0 && number %% 4 == 0){
    if(number %% 3 == 0 && number %% 2 == 0){
      for (i in 1:20){
        sum.number[i] <- number %% i
      }
      a <- sum(sum.number)
    }}}}
  }
  a <- a
  number = number + 1
}
toc()
number

````

## Issue

After getting to Problem_5 I have realised that R is computationally too slow. I will more than likely use Fortran going forward as it is significantly quicker at these types of calculations.