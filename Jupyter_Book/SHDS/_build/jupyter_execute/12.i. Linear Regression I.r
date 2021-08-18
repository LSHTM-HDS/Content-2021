# Refit model
data<- read.csv('https://www.inferentialthinking.com/data/baby.csv')
model1<-lm(Birth.Weight~Gestational.Days, data=data)

# Confidence interval for a fitted value 
new.data<-data.frame(Gestational.Days=280)
predict(model1, newdata=new.data, interval="confidence", level=0.95)

options(repr.plot.height=5, repr.plot.width=5)

# Plot the fitted regression line (the fitted values)
plot(data$Gestational.Days, data$Birth.Weight, xlab="Gestational days", ylab="Birthweight (oz)", main="95% Confidence intervals")
abline(model1)

# Add the confidence intervals for the fitted regression line
conf_interval<-predict(model1, newdata=data, interval="confidence", level=0.95)
lines(data$Gestational.Days, conf_interval[,2], col="blue")
lines(data$Gestational.Days, conf_interval[,3], col="blue")

# Prediction interval
predict(model1, newdata=new.data, interval="prediction", level=0.95)

#Set the graphical space so that two plots are shown side-by-side in one row
par(mfrow=c(1,2))
options(repr.plot.height=5, repr.plot.width=8)

#Confidence intervals for predicted values
plot(data$Gestational.Days, data$Birth.Weight, xlab="Gestational days", ylab="Birthweight (oz)", main="95% Confidence intervals")
abline(model1)

conf_interval<-predict(model1, newdata=data, interval="confidence", level=0.95)
lines(data$Gestational.Days, conf_interval[,2], col="blue")
lines(data$Gestational.Days, conf_interval[,3], col="blue")

#Reference ranges
plot(data$Gestational.Days, data$Birth.Weight, xlab="Gestational days", ylab="Birthweight (oz)", main="95% Prediction intervals")
abline(model1)

conf_interval<-predict(model1, newdata=data, interval="prediction", level=0.95)
lines(data$Gestational.Days, conf_interval[,2], col="blue")
lines(data$Gestational.Days, conf_interval[,3], col="blue")


