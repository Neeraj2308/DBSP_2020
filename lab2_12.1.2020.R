rm(list = ls())
sum(1/(1:10000) * c(1, -1))

#Important function

rnorm(n = 10, mean = 10, sd = 10)
rnorm(10, 10, 10)
rnorm(mean = 20, n = 15, sd = 5)
rnorm(5, 10, 1)
rnorm(sd = 1, mean = 10, n = 5)

rnorm(s = 1, m = 10, n = 5)

a <- c(1, 3, 5, 7, 8, 10, NA)

#Length 
length(a)

#sum
sum(a, na.rm = TRUE)
mean(a)

sd(a, na.rm = TRUE)
var(a, na.rm = TRUE)

str(a)
a <- 1:50
str(a)

sqrt(a)
log(a)
exp(a)

ma <- median(a)
ma

factorial(c(1,2,3))


#Generating data
#Y: SON HEIGHT
#X: FATHER HEIGHT

set.seed(1234)
x <- rnorm(10, 5.5, 1.2)
y <- 0.1 + 0.8*x + rnorm(10, 0, .1)

mx <- sum(x)/length(x)
my <- sum(y) / length(y)

covxy <- sum((x - mx) * (y - my)) / (length(x) - 1)
varx <-  sum((x - mx)^2)/(length(x) - 1)
bhat <- covxy/varx
ahat <- my - bhat*mx
uhat <- y - ahat - bhat* x
uhat


#Goodness of fit
X <- 0:4
f <- c(30, 40, 50, 25, 20)

px <- choose(4, X)*(0.5)^X * (0.5)^(4 - X)
Ef <- sum(f) * px

ts <- sum( (Ef - f)^2 / Ef )





#Matrix
mat <- matrix(data = 1:9, nrow = 3, byrow = TRUE)
dm <- dim(mat)

t(mat)

mat2 <- matrix(data = 5:13, nrow = 3, byrow = TRUE)
mat2

mat + mat2
mat %*% mat2
mat

solve(mat2)

mat3 <- matrix(data = c(5, 8, 12, 3), nrow = 2)
mat4 <- solve(mat3)
mat3 %*% mat4
eigen(mat3)

mat2
mat3
mat4


mat
sum(mat )
length(mat)
dim(mat)

nrow(mat)
ncol(mat)

a <- c(1,2,3)
a <- c(om = 1, aadi = 2, manan = 3)
a
b <- c(ansh = 1, om = 2, om = 2)
b
sum(b)


d <- c(a = 1, b = 2, 3)
d
names(d)
names(a)

mat
colnames(mat) <- c("Dhawal", "Vaibhav", "Prableen")
mat
colnames(mat)
rownames(mat) <- c("manika", "vedansh", "Dashmeet")
mat


Abhijit <- c(1,4,5)
Abhijit
names(Abhijit) <- c("a", "b", "c")
Abhijit


letters
LETTERS


seq(from = 1, to = 10, by = 2)
seq(from = 100, to = 200, by = 4)
seq(from = 100, by = 2, length.out = 100)
seq(from = 1, to = 10, length.out = 100)

rep(2, times = 100)

a <- c(1,2,3)
rep(a, times = 10, length.out = 20)
rep(c(1,2,3), times = 10)
rep(c(1,2,3), each = 10, length.out = 5)
rep(1:10, times = 1:10)


#plotting normal distribution
x <- seq(-3, 3, length.out = 500)
d <- dnorm(x, mean = 0, sd = 1)
plot(d)

?seq


s <- seq(1, to = 100, length.out = 1000000)
length(s)
head(s)
tail(s)
s


mat
colSums(mat)
colMeans(mat)


cumsum(c(1,2,3))
m5 <- replicate(n = 2, rnorm(n = 10, mean = 1, sd = 2))
summary(m5)
 
