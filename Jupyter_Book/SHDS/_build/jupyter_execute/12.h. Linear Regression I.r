# Example 2: Investigating the relationship between birthweight and mother's smoking status.
data<- read.csv('https://www.inferentialthinking.com/data/baby.csv')
model2<-lm(Birth.Weight~factor(Maternal.Smoker), data=data)
summary(model2)


