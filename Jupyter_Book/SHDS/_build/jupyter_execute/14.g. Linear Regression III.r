#The coefficient of determination
data<- read.csv('https://www.inferentialthinking.com/data/baby.csv')
model1<-lm(Birth.Weight~Gestational.Days, data=data)
summary(model1)

# F-test using anova()
anova(model1)

# F-test
summary(model1)

# ANOVA for Model 4 
data$Gestational.Days.Centered<-data$Gestational.Days-mean(data$Gestational.Days)
data$Maternal.Height.Centered<-data$Maternal.Height-mean(data$Maternal.Height)

model4<-lm(Birth.Weight~Gestational.Days.Centered+Maternal.Height.Centered, data=data)
summary(model4)

anova(model1, model4)

model2<-lm(Birth.Weight~factor(Maternal.Smoker), data=data)
anova(model2)
summary(model2)


