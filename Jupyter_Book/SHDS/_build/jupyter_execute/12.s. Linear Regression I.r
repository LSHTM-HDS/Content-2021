data<- read.csv('https://www.inferentialthinking.com/data/baby.csv')
model2<-lm(Birth.Weight~factor(Maternal.Smoker), data=data)

anova(model2)
summary(model2)
