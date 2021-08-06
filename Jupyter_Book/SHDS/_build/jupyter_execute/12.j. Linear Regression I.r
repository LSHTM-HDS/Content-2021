#Prediction interval
data<- read.csv('https://www.inferentialthinking.com/data/baby.csv')
new.data<-data.frame(Gestational.Days=280)
model1<-lm(Birth.Weight~Gestational.Days, data=data)
predict(model1, newdata=new.data, interval="prediction", level=0.95)

#Set the graphical space so that two plots are shown side-by-side in one row
par(mfrow=c(1,2))
options(repr.plot.height=5)

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


