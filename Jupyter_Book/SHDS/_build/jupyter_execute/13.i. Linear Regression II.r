#Create a binary variable indicating height group
data$Maternal.Height2<-0
data$Maternal.Height2[data$Maternal.Height>64]<-1

#Create the interaction term 
data$int2<-data$Maternal.Smoker2*data$Maternal.Height2

#Model relating birthweight to mothers smoking status, height and their interaction
int_model2<-lm(data$Birth.Weight~factor(data$Maternal.Smoker2)+factor(data$Maternal.Height2)+factor(data$int2))
summary(int_model2)
