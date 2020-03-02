#Lab: 8
#Title: General
#Date: 02-March-2020
#Author: Neeraj Jain

#Test Solution
ril <- read.csv(file= "/Users/neerajjain/Desktop/Neeraj Jain/BBE/DBSP_2020/Test1/RIL.csv", header = TRUE)
View(ril)

summary(ril)

#summary statistics using summary function
b <- c(2, 4, NA, 5, 6)
summary(b)

#plot of ril price
plot(ril$Close.Price, type = "l")

a <- c(1, 4, 2)
diff(a)

Diff <- diff(ril$Close.Price)
nrow(ril)
length(Diff)

ril$dprice <-c(NA, Diff)
View(ril)


Buy <- c()

for(i in 4:nrow(ril)) {
  Buy[i] <- ifelse(ril$dprice[i] < 0  & ril$dprice[i - 1] < 0 & ril$dprice[i - 2] < 0, 1, 0)
}
ril$buy <- Buy

#Total number of shares bought
n <- sum(ril$buy, na.rm = T)

#total investment
Invt <- sum (ril$buy * ril$Close.Price, na.rm = TRUE) 

#total profit
(n * ril$Close.Price[nrow(ril)] - Invt ) / Invt * 100



diff.m <- function(x) {
  if(length(x) <= 1) {
    stop("The length of vector should be more than one")
  }
  c(NA, diff(x))
}

#Creating dummy variables
df <- data.frame(Signal = sample(x = c("A", "B", "C"), size = 50, replace = T))
df$Signal <- as.character(df$Signal)

str(df)

View(df)

#requirements
#a. numbers of variable: n(unique) - 1
View(df)

df$A <- ifelse(df$Signal == "A", 1, 0)
df$B <- ifelse(df$Signal == "B", 1, 0)

y <- sample(x = c("A", "B", "Aadi", "Abhijit"), size = 50, replace = TRUE)
d <- c()

Dummy <- function(x) {
  mat <- matrix(data = x, ncol = 1)
  uniquex <- unique(x) 
  n <- length(uniquex) 
  for(i in 1:(n-1)) {
    mat <- cbind(mat, ifelse(x == uniquex[i], 1, 0))
    #mat[, i+1] <- ifelse(x == uniquex[i], 1, 0)
  }
  return(mat)
}

Paridihi <- Dummy(x)
View(Paridihi)

Dummy1 <- function(x) {
  uniquex <- unique(x) 
  n <- length(uniquex) 
  mat <- matrix(data = NA, nrow = length(x), ncol = (n - 1))
  for(i in 1:(n-1)) {
    #mat <- cbind(mat, ifelse(x == uniquex[i], 1, 0))
    #common mistake 1
    d[, i] <- ifelse(x == uniquex[i], 1, 0)
  }
  return(mat)
}

i = 3
View(mat)

View(Dummy1(y))


#
b <- c(23, 43, 12, 45, 55)
o <- order(b, decreasing = T)
o
b[o]

Df <- data.frame(Name = letters[1:20], marks = rnorm(20, 50, 10))
order(Df$marks)

Df <- Df[order(Df$marks, decreasing = T), ]
View(Df)


a <- sample(x = c(1, 0), size = 50, replace = T)
a
#count number of zero after one
sum(diff(a) < 0)  #credit: Paridhi, Vaibhav
a

NA & T & T

#count number of zero after two consecutive one
b <- c(0, 1, 1)
diff(diff(b))
par(mfcol = c(2, 1))
plot(1:50, type = "l")
