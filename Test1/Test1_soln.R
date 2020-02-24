#Title: Challenging Questions
#Date: 24/02/2020
#Author: Neeraj Jain

rm(list = ls())
#Question1

#Reading Data
#Make sure, your data file is located in working directory. 
ril <- read.csv(file = "RIL.csv")
N <- nrow(ril) #number of observations

#change in price
ril$change <- c(0, diff(ril$Close.Price)) 

#Calculating consecutive fall (method 1)
cum <- 0
for(i in 2:N) {
  if(ril$change[i] < 0) {
    cum[i] <- cum[i - 1] + 1
  } else {
    cum[i] <- 0
  }
}

ril$cum <- cum
View(ril)

#Buy Signal
ril$buy <- ifelse(ril$cum >= 3, 1, 0)

#a. Total share bought
( n <- sum(ril$buy, na.rm = T) )

#total investment
( Invt <- sum ( ril$buy * ril$Close.Price ) )

#Total Profit
( Profit <- n*ril$Close.Price[N] - Invt )

#Total Return
Profit / Invt * 100 #percent


#Part (b)
#Total Invt
Invt.b <- n * ril$Close.Price[1]

#Closing Value
Value <- n * ril$Close.Price[N]

#profit
Profit.b <- Value - Invt.b

#Return
Profit.b / Invt.b * 100 #percentage


#Appendix
#Direct method to get buy signal without using cum

buy2 <- rep(0, N) #vector of zero
for(i in 3:N) {
  if( all ( ril$change[(i-2) : i] < 0) ) 
    buy2[i] <- 1 
  else buy2[i] <- 0
}

all(buy2 == ril$buy) #same vector as buy in ril
#------------------------------------------------------------
#_____________----------------------------__________________

#Question 2: Fib Series
#____________________________________________________________________________________

Fib <- function(n) {
  if( n < 0 | as.integer(n) - n != 0) {
    stop("n should be natural number.")
  }
  seq <- rep(1, n)
  if(n > 2) {
    for(i in 3:n) {
      seq[i] <- seq[i-1] + seq[i -2]
    }
  }
  return(seq[n])
}

#Example:
Fib(1)
Fib(2)
Fib(10)
Fib(8)

#First 20 values of Fib series
sapply(1:20, Fib)

