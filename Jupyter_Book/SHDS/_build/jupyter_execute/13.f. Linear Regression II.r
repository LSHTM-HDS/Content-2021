#Define the squared terms
data<- read.csv('https://www.inferentialthinking.com/data/baby.csv')
data$Gestational.Days.squared<-data$Gestational.Days*data$Gestational.Days
data$Maternal.Height.squared<-data$Maternal.Height*data$Maternal.Height

#Quadratic regression to test the linearity between birthweight and gestational days
model_test1<-lm(data$Birth.Weight~data$Gestational.Days+data$Maternal.Height+data$Gestational.Days.squared)
summary(model_test1)

#Quadratic regression to test the linearity between birthweight and mother's height
model_test2<-lm(data$Birth.Weight~data$Gestational.Days+data$Maternal.Height+data$Maternal.Height.squared)
summary(model_test2)
