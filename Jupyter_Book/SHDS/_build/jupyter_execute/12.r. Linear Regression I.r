data<- read.csv('https://www.inferentialthinking.com/data/baby.csv')
#Create new (centered) variables in our data
data$Gestational.Days.Centered<-data$Gestational.Days-mean(data$Gestational.Days)
data$Maternal.Height.Centered<-data$Maternal.Height-mean(data$Maternal.Height)
# Fit models
model1<-lm(Birth.Weight~Gestational.Days, data=data)
model3<-lm(Birth.Weight~Gestational.Days.Centered+Maternal.Height.Centered, data=data)


#ANOVA for Model 3 
summary(model3)

anova(model1, model3)
