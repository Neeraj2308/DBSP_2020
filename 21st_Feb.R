#Date: 21/2/2020
#Author: Neeraj Jain
#Title: Doubt Class

rm(list = ls())
a <- c(1, 1, 1, 1, 0)

#Problem1: Create a function that check either all values are equal or not. 
#method1: Atishay and Paridhi
is.idential <- function(x) {
  length(unique(x)) == 1
}

#method2: SUMO (Aadi, Udit, Om, Manan)
is.idential <- function(x) {
  all(x[1] == x)
}

#mthod 3: Abhijit
is.idential <- function(x) {
  j <- 0
  for(i in 1:length(x)) {
    if(x[i] == x[1]) {
      j <- j + 1
    } 
  }
  j == length(x)
}


#method4: My method
is.identical <- function(a) {
  min(a, na.rm = T) == max(a, na.rm = T)
}


#Quartiles

#Generating data
p <- rnorm(100)

quantile(p, probs = c(.01, .5, .99))  #gives you three percentile

#storing quantiles in object b
b <- quantile(p,probs = seq(from=.10,to=1,by=.10))
str(b) #check b is numeric
b[2]  #gives 2nd quantile

#Problem2: Winsorization function in R at p% 
winsorization <- function(x, p = .01) {
  
  #remove hash to add error component
  #if(any(p < 0, p > 1)) {
  #  stop("P can not exceel one or below 0")
  #}
  
  #If p exceed 0.5, then subtract from 1.
  if(p > 0.5) {
    p <- 1  - p
  }
  
  q <- quantile(x = x, probs =c(1-p, p))
  ql <- q[2] #lower quantile
  qu <- q[1] #upper quantile
  x[x > qu] <- qu
  x[x < ql] <- ql
  return(x)
}

a <- rnorm(100)
b <- winsorization(a, p = .10)
c <- winsorization(a, p = .90)

#Checking our code
all(b == c) #this should be true
max(b) == quantile(a, p = .90)
min(b) == quantile(a, p = .10)

