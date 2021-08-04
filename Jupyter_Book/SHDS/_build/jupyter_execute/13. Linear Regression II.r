#Load data
data<- read.csv('https://www.inferentialthinking.com/data/baby.csv')

#Load the data
data<- read.csv('https://www.inferentialthinking.com/data/baby.csv')

#Fit Model 3 to the data
model3<-lm(Birth.Weight~Gestational.Days+Maternal.Height, data=data)

#Set the graphical space so that two plots are shown side-by-side in one row
par(mfrow=c(1,3))

#Plot the residuals against the fitted values
plot(model3$fitted.values, model3$residuals, main = "Residual plot", xlab="Fitted values", ylab="Residuals", pch=19)
abline(h=0)

#Obtain the standardised residuals
Standardised.Residuals<-rstandard(model3)

#Normal Q-Q plot of the standardised residuals 
qqnorm(Standardised.Residuals, main="Normal Q-Q plot", ylab="Expected normal value", xlab="Standardised Residuals")
qqline(Standardised.Residuals)

#Plot of Cook's distance
plot(model3, which=4)

#Define the squared terms
data$Gestational.Days.squared<-data$Gestational.Days*data$Gestational.Days
data$Maternal.Height.squared<-data$Maternal.Height*data$Maternal.Height

#Quadratic regression to test the linearity between birthweight and gestational days
model_test1<-lm(data$Birth.Weight~data$Gestational.Days+data$Maternal.Height+data$Gestational.Days.squared)
summary(model_test1)

#Quadratic regression to test the linearity between birthweight and mother's height
model_test2<-lm(data$Birth.Weight~data$Gestational.Days+data$Maternal.Height+data$Maternal.Height.squared)
summary(model_test2)

#Define a dummy variable for maternal.smoker
data$Maternal.Smoker2<-0
data$Maternal.Smoker2[data$Maternal.Smoker=="True"]<-1

#Model without the interaction term
no_int_model<-lm(data$Birth.Weight~data$Gestational.Days+factor(data$Maternal.Smoker2))
summary(no_int_model)

#Scatterplot
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


#Create a binary variable indicating height group
data$Maternal.Height2<-0
data$Maternal.Height2[data$Maternal.Height>64]<-1

#Create the interaction term 
data$int2<-data$Maternal.Smoker2*data$Maternal.Height2

#Model relating birthweight to mothers smoking status, height and their interaction
int_model2<-lm(data$Birth.Weight~factor(data$Maternal.Smoker2)+factor(data$Maternal.Height2)+factor(data$int2))
summary(int_model2)

#Create the interaction term 
data$int3<-data$Gestational.Days*data$Maternal.Height

#Include the interaction term in the regression model 
int_model3<-lm(data$Birth.Weight~data$Gestational.Days+data$Maternal.Height+data$int3)
summary(int_model3)

summary(model3)
confint(model3, parm=c(2,3), level=0.95)

new.data<-data.frame(Gestational.Days=200,Maternal.Height=66)
predict(model3, newdata=new.data, interval="confidence", level=0.95)

predict(model3, newdata=new.data, interval="prediction", level=0.95)
