data<- read.csv('https://www.inferentialthinking.com/data/baby.csv')
model1<-lm(Birth.Weight~Gestational.Days, data=data)
summary(model1)

# Confidence intervals for the slope, beta_1
confint(model1, parm=2, level=0.95)


