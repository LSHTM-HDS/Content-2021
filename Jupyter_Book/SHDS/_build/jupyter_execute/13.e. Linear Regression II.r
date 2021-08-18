# What are the mean gestational days and mothers height in our data?
data<- read.csv('https://www.inferentialthinking.com/data/baby.csv')
summary(data$Gestational.Days)
summary(data$Maternal.Height)

# Create new (centered) variables in our data
data$Gestational.Days.Centered<-data$Gestational.Days-mean(data$Gestational.Days)
data$Maternal.Height.Centered<-data$Maternal.Height-mean(data$Maternal.Height)

# Redefine Model 4 using the centered variables
model4<-lm(Birth.Weight~Gestational.Days.Centered+Maternal.Height.Centered, data=data)
summary(model4)
