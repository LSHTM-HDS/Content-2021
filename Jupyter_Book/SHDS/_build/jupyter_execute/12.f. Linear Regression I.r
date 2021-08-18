# Model 1: Investigating the relationship between birthweight and length of pregancy
data<- read.csv('https://www.inferentialthinking.com/data/baby.csv')
model1<-lm(Birth.Weight~Gestational.Days, data=data)
summary(model1)

options(repr.plot.width=5, repr.plot.height=5)
with(data, plot(Gestational.Days, Birth.Weight))
abline(model1)
