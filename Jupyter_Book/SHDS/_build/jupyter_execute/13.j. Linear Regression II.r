#Create the interaction term 
data$int3<-data$Gestational.Days*data$Maternal.Height

#Include the interaction term in the regression model 
int_model3<-lm(data$Birth.Weight~data$Gestational.Days+data$Maternal.Height+data$int3)
summary(int_model3)
