# What are the mean gestational days and mothers height in our data?
data<- read.csv('https://www.inferentialthinking.com/data/baby.csv')

# Redefine Model 4 using the centered variables
model4<-lm(Birth.Weight~Gestational.Days+I(Gestational.Days**2), data=data)
summary(model4)
