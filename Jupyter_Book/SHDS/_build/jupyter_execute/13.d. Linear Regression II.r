#Load the data
data<- read.csv('https://www.inferentialthinking.com/data/baby.csv')

#Fit Model 3 to the data
model3<-lm(Birth.Weight~Gestational.Days+Maternal.Height, data=data)

#Set the graphical space so that two plots are shown side-by-side in one row
par(mfrow=c(1,3))
options(repr.plot.height=3)

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
