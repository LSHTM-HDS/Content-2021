data<- read.csv('https://www.inferentialthinking.com/data/baby.csv')
model3<-lm(Birth.Weight~Gestational.Days+Maternal.Height, data=data)

summary(model3)
confint(model3, parm=c(2,3), level=0.95)

new.data<-data.frame(Gestational.Days=200,Maternal.Height=66)
predict(model3, newdata=new.data, interval="confidence", level=0.95)

predict(model3, newdata=new.data, interval="prediction", level=0.95)
