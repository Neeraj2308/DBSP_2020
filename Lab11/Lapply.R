#Apply Functions

#apply function, lapply, and sapply


matrix <- matrix(data = 1:100, ncol = 10) 

apply(matrix, MARGIN = 1, FUN = function(x) c(mean(x), sd(x)))


#lapply and sapply

?sapply #simplify the output. 
ls <- list(a = 1:10, b = 1:5, c = matrix(data = 1:10, ncol = 2)) 
ls
output <- lapply(ls, FUN = length) #always returnn the output in list
output
sum(output)

sapply(ls, FUN = sum)
o2 <- lapply(ls, FUN = sum)
str(o2)


Dfm <- data.frame(a = 1:10, b = 10:1, letters[1:10])
apply(Dfm, 2, sum)

#aadi
Df <- data.frame(a = c(1:9, NA), b = sample(c(1, 5, NA), size = 10, replace = TRUE))
Df[apply(Df,2,is.na)] <- 0
Df

apply(Df,2,is.na)


#Question: generate random numbers from normal distribution 
100 RN  sd - 1 (matrix)
10 - 1
10 - 2
10 - 3


10 - 10

v <- 1:10
b <- sapply(v, FUN = function(x) rnorm(10, x, sd = 1))
b <- as.data.frame(b)
str(b)

sample

neeraj2409@outlook.com

#without using loop
#assume first column of b is independent variable, and rest are dependent variables. 

apply(b ,2, FUN = function(x)coef(lm(b[ ,1]~x)))
x = sapply(b[,-1], function(x) {coef(lm(b[,1] ~ x))})

apply(b, 2, mean)


Ls <- list(a = 1, b = 1:2, c = 1:5)
#convert each element of Ls into length of 10, then convert your output 
#either in df or matrix
a   b  c
1   1   1
NA  2   2
NA  NA  3
.     

sapply(Ls , function(x) {x[(length(x) + 1):10] <- 0
return(x)})

sapply(Ls, FUN = function(x) x[1:10]) #+1 

sapply(Ls, FUN = function(x) {length(x) <- 10
return(x)})


x <- 1:2
x[3]
x[1:4]
x[10]
