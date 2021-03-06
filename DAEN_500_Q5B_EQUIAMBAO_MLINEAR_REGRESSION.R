
#Import NBA DATA from https://www.kaggle.com/noahgift/social-power-nba?select=nba_2016_2017_100.csv
#first download file and save to your working directory. 
analytic <- read.csv(file="nba_2016_2017_100.csv", header=TRUE, sep=",")
Model1 = lm(W_PCT ~ PTS + SALARY_MILLIONS, data=analytic) 
summary(Model1)

library (broom)
library(tidyverse)


myplot <- ggplot(data = analytic) +
  geom_point(mapping = aes(x=SALARY_MILLIONS, y=W_PCT)) +
  ggtitle("Winning Percentage and Salary")
print(myplot)

myplot <- ggplot(data = analytic) +
  geom_point(mapping = aes(x=PTS, y=W_PCT)) +
  ggtitle("Winning Percentage and Points Per Game")
print(myplot)



plot(fitted(Model1), residuals(Model1), ylab="Residuals", xlab="Fitted values")
qqnorm(residuals(Model1))
qqline(residuals(Model1))







              
                                      




