# Model 3: Relating birthweight to length of pregnancy and mother's height
data<- read.csv('https://www.inferentialthinking.com/data/baby.csv')
model3<-lm(Birth.Weight~Gestational.Days+Maternal.Height, data=data)
summary(model3)
