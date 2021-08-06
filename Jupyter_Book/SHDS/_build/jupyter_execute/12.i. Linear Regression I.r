#Confidence intervals for beta_1
data<- read.csv('https://www.inferentialthinking.com/data/baby.csv')
model1<-lm(Birth.Weight~Gestational.Days, data=data)
confint(model1, parm=2, level = 0.95)

#Confidence interval for a fitted value 
new.data<-data.frame(Gestational.Days=280)
predict(model1, newdata=new.data, interval="confidence", level=0.95)
