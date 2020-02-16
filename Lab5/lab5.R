#Lab 5
#subsetting
#Date: 3 Feb 2020

rm(list = ls())
a <- c(1, 4 , 5, 10)
a[c(T, F, T, F)]

a[a > 2]

a[c(T, F)]

seq(1, 100,2)
(1:100)[c(T, F)]

a[c(1, 2, NA)]
a[NA]

#logical functions and operator
#  >  < >= <= ! & | all any

#Subsetting by element name
BBE <- c(abhijit = 10, harkaran = 9.2, Guntas = 2.1, Dhawal = 20, Risabh = 20)
sum(BBE)
BBE
BBE^2

BBE[c("abhijit", "Guntas")]
BBE["Risabh"]

#name of student with highest marks
max(BBE)
names(BBE)

BBE == max(BBE)
names(BBE[BBE == max(BBE)])

names(BBE)[BBE == max(BBE)]

set.seed(0809)
Gender <- sample(c("M", "F"), size = 20, replace = T)
Course <- sample(c("BBE", "BCOM"), size = 20, replace = T)
Accounting <- runif(n = 20, min = 10, max = 20)
Eco <- runif(n = 20, min = 10, max = 20)
df <- data.frame(Gender, Course, Accounting, Eco)
df

#1 Marks of BBE students
df[df$Course == "BBE", ]
df$Course 

#2: BCOM and Female: risabh
df[df$Course == "BCOM" & df$Gender == "F", ]


#BBE, and Accounting and Males: Max
a_bbe_m <- df[df$Course == "BBE"& df$Gender == "M", ]
max(a_bbe_m$Accounting)

#BCOM : Difference of ECo and accounting  marks
df2 <- df[df$Course == "BCOM", ]
df2$Diff <- df2$Accounting - df2$Eco

df$status <- ifelse(df$Eco < 12, "Fail", "Pass")
df


#1. Get mean marks of BBE, and BCOM
mean(df[df$Course == "BBE", ]$Accounting) 
mean(df[df$Course == "BCOM", ]$Accounting) 

#2nd method
mean(df$Accounting[df$Course == "BBE"])


#2. Mean marks of M, F

#3. Cross tabulation for course and gender
table(df$Gender, df$Course)

#4. max marks gender wise and course wise: accounting
max ( df$Accounting[df$Course == "BBE" & df$Gender == "M"] )
df[df$Course == "BBE" & df$Gender == "M", ]$Accounting

#5. create following object
a <- c(1, 5, 10, NA, 20)

#a. Remove missing values
 a == NA #not right method
a[!is.na(a)]

# remove NA with mean values.
mean(a, na.rm = T)

a[is.na(a)] <-  mean(a, na.rm = T)
a


#Creating our own function

sqr <- function(x) {
  x^2
}

sqr(23)
sqr(c(1, 4, 67))

#power function
powerf <- function(x, power ){
  x^power
}

powerf(25, 2.2)
powerf(x = 25, power = 2.2)
powerf(x = 26)

#Setting default value for arguments
powerf <- function(x, power = 1){
  x ^ power
}

powerf(24)

#Skewness function
skew <- function(x) {
  Mean <- mean(x) 
  L <- length(x)
  s <- sum((x - Mean)^3) / L
  s/sd(x)^3
}

Data <- c(2, 5, 7, 9, 10)
skew(Data)

#Kurtosis
kurt <- function(x) {
  Mean <- mean(x) 
  L <- length(x)
  s <- sum((x - Mean)^4) / L
  s/sd(x)^4
}

kurt(Data)

#moments
moment <- function(x, order = 1) {
  sum((x - mean(x))^order) / length(x)
  
}

#Summary Statistics
ss <- function(x) {
  Mean <- mean(x) 
  Sd <- sd(x)
  Skew <- skew(x)
  c(Mean = Mean, std  = Sd, Skewness = Skew, Min = min(x), Max = max(x), nobs = length(x))
}

ss(Data)
