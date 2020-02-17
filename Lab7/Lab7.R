rm(list =ls())

#Github
github.com/neeraj2308

#Loop

1:9

for(i in 1:9) {
  print(i^2)
}

#Matrix
mat <- matrix(1:16, ncol = 4)
apply(mat, 2, mean)

mean(mat[, 1])
mean(mat[, 2])
mean(mat[, 3])
mean(mat[, 4])

rm(a)
a <- c() 

for(i in 1:4) {
    a <- c()
    a[i] <- mean(mat[, i]) 
}
a
i = 2

a[10] <- 5 
a

install.packages("wooldridge")
library(wooldridge)
b[2]

data()

set.seed(123)
n <- c("Rishu", "Rajat", "Udit", "Dhawal", "Manan")
Df <- data.frame(Names = sample(x = n, size = 30, replace = TRUE), 
                 Marks = rnorm(n = 30, mean = 10, sd = 3))
head(Df)
str(Df)

#using loop, get mean marks of each names, max marks for each name, 
# sd for each name

#Manually
mean(Df[Df$Names == "Dhawal", 2])
max(Df[Df$Names == "Dhawal", 2])

max(Df[Df$Names == "Dhawal", ]$Marks)

#loop
Mean <- c()
Max <- c()
for(i in 1:length(n)) {
  D <- Df[Df$Names == n[i], ]$Marks
  Mean[i] <- mean(D)
  Max[i] <- max(D)
}

Summary <- data.frame(Names  = n, Mean1 = Mean, Max1 = Max)
#
#names   mean max
Summary
View(Df)


#Plot Loop H.W.
set.seed(123)
Matrix <- matrix(data = rnorm(100), ncol =10)
colnames(Matrix) <- LETTERS[1:10]
#A: Dependent Variable
#B:J : Independent Variable

#Plot every IV against DV
#Title: "Scatterplot: A ~ IV Col Name"
#save all plots in specific directory

for(i in 1:) {
  #body of loop
}


x <- 1:10
y <- 10:1

plot(y ~ x, main = "Nirjhar is Hot", xlab = "Independent Variable",
     ylab = "Dependent Variable")


#Control Flow

#1: If function
if(FALSE) {
  apq <- 2
}
apq

#Sqrt

srt <- function(x) {
  if(x  > 0 ) {
    x^0.5
  } else {
  print("Number is negative")
  }
}


Annuity <- function(A = 1, i, n) {
  if(i == 0) {
    n*A
  } else {
  A * (1 - (1+i)^(-n) ) / i
  }
}

Annuity <- function(A = 1, i, n, type = c("Monthly","HY", "Q", "A")) {
  if(n < 0) {
    stop("N is negative")
  }
  Fac <- c(Monthly = 12, HY = 2, Q = 4, A = 1)
  ik
  s <- Fac[type] 
  if(i == 0) {
    n*A*s
  } else {
    A * (1 - (1+i/s)^(-n*s) ) / (i/s)
  }
}

Annuity(10000, i = 0, n = 10, type = "Q")
srt(5)
srt(-5)
?format
