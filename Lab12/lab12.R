#t test in R

#read help file for `t.test`
?t.test

x1 <- rnorm(20, mean = 0, sd = 5)
x2 <- rnorm(20, mean = 0, sd = 8)

#one sample t-test
#(check default value for other arguments in function help file)
( y1 <- t.test(x1) )

#two sample t-test: unpaired test
( y2 <- t.test(x1, x2, conf.level =  .9) )  #by default test is not paired
# if test is not paired, sample size can vary for x and y

#two sample t-test: paired
( y3 <- t.test(x1, x2, paired =  TRUE, conf.level = .95) )

#two sample t-test: unpaired but assuming variance is equal
( y4 <- t.test(x1, x2, var.equal = TRUE) ) #standard textbook text

#######################################
# Merge Data
#######################################
#check help file for merge
?merge

df1 <- data.frame(Names = sample(x = LETTERS, size = 10), marks1 = 1:10 )
df2 <- data.frame(Names = sample(x = LETTERS, size = 10), marks2 = 1:10 )

merge(df1, df2, all.x = TRUE, all.y = TRUE) #"Name" is common in both. 
#(by default merge use common name in both to merge the file)

merge(df1, df2, all = TRUE)

#(we can use merge as vlookup of excel with more flexibility)

#for example we have given two data set, one containing info about students, and 
# second containing key variables and marks
set.seed(12345)
info <- data.frame(roll = 1001:1040, Names = 
                     replicate(40, paste(sample(LETTERS, size = runif(1, 4, 8)), collapse = ""))) 
marks <- data.frame(roll = sample(1001:1040, size = 20), marks = rnorm(20, mean = 60, sd = 25) )
#problem: now merge data for marks in main dataframe (info)
#if you remember excel, this can be easily done with vlookup

final <- merge(info, marks, all.x = TRUE) #much more easier than vlookup of excel

#now think of a problem similar of vlookup approximate match. 
#suppose we have given criteria for grade in another dataframe. 
grade.criteria <- data.frame(lessthan = c(60, 70, 80, 90, 100), 
                             grade = c("D", "C", "B", "A", "A+"), stringsAsFactors = FALSE)
#this problem can be easily solved via vlookup approximate match in excel. 
#Challenge: How to do in R wihout using ifelse multiple times

step1 <- lapply(marks$marks, FUN = function(x) x - grade.criteria$lessthan) #getting difference
step2 <- sapply(step1, FUN = function(x) min(which(x < 0))) #which has first negative difference
step3 <- grade.criteria$grade[step2]
marks$grade <- step3

#direct method
marks$grade2 <- grade.criteria$grade [ sapply(marks$marks, FUN = function(x) {
  min(which((x - grade.criteria$lessthan) < 0))
  }) ] 

#(question related to approximate match will not be asked in the exam. However, 
#merge function is relevant)