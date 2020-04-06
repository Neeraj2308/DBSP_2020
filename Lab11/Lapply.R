#lapply and sapply help file has already been posted. 

#Replacing NA with zero
Df <- data.frame(a = c(1:9, NA), b = sample(c(1, 5, NA), size = 10, replace = TRUE))
Df[apply(Df,2,is.na)] <- 0 #by Aadi

Df[is.na(Df)] <- 0 #more easy


apply(Df,2,is.na)


#Regression using sapply
b <- sapply(v, FUN = function(x) rnorm(10, x, sd = 1))
b <- as.data.frame(b)

#without using loop
#assume first column of b is independent variable, and rest are dependent variables. 

apply(b ,2, FUN = function(x)coef(lm(b[ ,1]~x))) #by Aadi
x = sapply(b[,-1], function(x) {coef(lm(b[,1] ~ x))}) #by Srehsta


#More difficult question
Ls <- list(a = 1, b = 1:2, c = 1:5)
#Qyestion : for above Ls convert each element of Ls into length of 10, then convert your output 
#either in df or matrix
.     
sapply(Ls , function(x) {x[(length(x) + 1):10] <- 0
return(x)})

sapply(Ls, FUN = function(x) x[1:10]) #+1  #by Aadi

sapply(Ls, FUN = function(x) {length(x) <- 10
return(x)})


#Total Gain in Marks
#Aadi = +2
