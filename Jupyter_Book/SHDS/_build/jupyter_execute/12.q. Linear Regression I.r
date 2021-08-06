#The coefficient of determination
data<- read.csv('https://www.inferentialthinking.com/data/baby.csv')
model1<-lm(Birth.Weight~Gestational.Days, data=data)
summary(model1)

# F-test
summary(model1)

# F-test using anova()
anova(model1)
