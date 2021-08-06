data<- read.csv('https://www.inferentialthinking.com/data/baby.csv')
#Define a dummy variable for maternal.smoker
data$Maternal.Smoker2<-0
data$Maternal.Smoker2[data$Maternal.Smoker=="True"]<-1

#Model without the interaction term
no_int_model<-lm(data$Birth.Weight~data$Gestational.Days+factor(data$Maternal.Smoker2))
summary(no_int_model)

#Scatterplot
options(repr.plot.height=5, repr.plot.width=5)
plot(x = data[data$Maternal.Smoker2 == 0, ]$Gestational.Days, y = data[data$Maternal.Smoker2 == 0, ]$Birth.Weight, 
     pch = 19, xlab = "Gestational days", ylab = "Birthweight", col = rgb(red = 0, green = 0, blue = 1, alpha = 0.25))
abline(a = no_int_model$coefficients[1], b = no_int_model$coefficients[2], col = "blue", lwd = 2)
points(x = data[data$Maternal.Smoker2 == 1, ]$Gestational.Days, y = data[data$Maternal.Smoker2 == 1, ]$Birth.Weight, 
       col = rgb(red = 1, green = 0, blue = 0, alpha = 0.25), pch = 19)
abline(a = coef(no_int_model)[1] + coef(no_int_model)[3], b = coef(no_int_model)[2], 
       col = "red", lwd = 2)


#Create the interaction term
data$int1<-data$Gestational.Days*data$Maternal.Smoker2

#Include the interaction term in our model
int_model1<-lm(data$Birth.Weight~data$Gestational.Days+factor(data$Maternal.Smoker2)+data$int1)
summary(int_model1)

#Scatter plot
plot(x = data[data$Maternal.Smoker2 == 0, ]$Gestational.Days, y = data[data$Maternal.Smoker2 == 0, ]$Birth.Weight, 
     pch = 19, xlab = "Gestational days", ylab = "Birthweight", col = rgb(red = 0, green = 0, blue = 1, alpha = 0.25))
abline(a = int_model1$coefficients[1], b = int_model1$coefficients[2], col = "blue", lwd = 2)
points(x = data[data$Maternal.Smoker2 == 1, ]$Gestational.Days, y = data[data$Maternal.Smoker2 == 1, ]$Birth.Weight, 
       col = rgb(red = 1, green = 0, blue = 0, alpha = 0.25), pch = 19)
abline(a = coef(int_model1)[1] + coef(int_model1)[3], b = coef(int_model1)[2] + coef(int_model1)[4], 
       col = "red", lwd = 2)

