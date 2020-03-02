####Using Library Stargazer
#Author: Neeraj Jain
#Date: 16th March 2020
library(wooldridge)
library(stargazer)

#objective: How to report regression results in format?

data()
data("k401k")
m1 <- lm(prate ~ mrate + age + totemp, data = k401k)
m2 <- lm(prate ~ mrate + age + log(totemp), data = k401k )
m3 <- lm(prate ~ mrate + age + totemp + I(totemp^2), data = k401k )
m4 <- lm(prate ~ mrate + age + totemp + totemp^2, data = k401k ) 


#Creating summary of all three models
stargazer(m1, m2, m3)  #by default latex code
stargazer(m1, m2, m3, type = "text")

#Giving Title to the output
stargazer(m1, m2, m3, type = "text", title = "Comparing Model")
stargazer(m1, m2, m3, type = "html", title = "Comparing Model")

#To save file. 
stargazer(m1, m2, m3, type = "html", title = "Comparing Model", out = "result.html")
#Now copy output from HTML to MS Word

#For TeX output
stargazer(m1, m2, m3, type = "latex", title = "Comparing Model", out = "result.tex")

#Compare the quality of tex output and word output. 

#there is no option for directly writing output in doc file. Best approach is
# get the output in HTML and copy the HTML output in doc file. 
## Do not copy "text" output of stargazer in doc file. 
