#Example 1: Investigating the relationship between birthweight and length of pregancy
data<- read.csv('https://www.inferentialthinking.com/data/baby.csv')
model1<-lm(Birth.Weight~Gestational.Days, data=data)
summary(model1)

#Example 2: Investigating the relationship between birthweight and mother's smoking status.
model2<-lm(Birth.Weight~factor(Maternal.Smoker), data=data)
summary(model2)
