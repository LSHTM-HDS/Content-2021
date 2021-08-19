# Model 4: Relating birthweight to length of pregnancy and mother's height
data<- read.csv('https://www.inferentialthinking.com/data/baby.csv')
model4<-lm(Birth.Weight~Gestational.Days+Maternal.Height, data=data)
summary(model4)


