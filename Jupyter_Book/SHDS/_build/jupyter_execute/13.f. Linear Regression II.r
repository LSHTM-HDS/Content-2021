# What are the mean gestational days and mothers height in our data?
data<- read.csv('https://www.inferentialthinking.com/data/baby.csv')

# Add quadratic term:
model5<-lm(Birth.Weight~Gestational.Days+I(Gestational.Days**2), data=data)
summary(model5)
