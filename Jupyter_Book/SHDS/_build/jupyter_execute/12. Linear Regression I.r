#Load data
data<- read.csv('https://www.inferentialthinking.com/data/baby.csv')

#Look at the first 10 rows of the data
head(data)


# Set the plot area into a 1x2 array
par(mfrow=c(1,2))

#Example 1: Scatter Plot
plot(data$Birth.Weight, data$Gestational.Days,  main="Example 1", 
     xlab="Gestational Days", ylab="Birthweight (oz)", pch=19)

#Example 2: Box plot
boxplot(data$Birth.Weight~data$Maternal.Smoker, main="Example 2", xlab="Mother smokes", ylab="Birthweight (oz)")


### Set random number generator
set.seed(24082098)

#Set graphical display to show 2 plots in a row
par(mfrow=c(1,2))

#Simulate a linear X-Y relationship and plot
x<-rnorm(100,0,1)
ylin<-x+rnorm(100,0,0.5)
plot(x,ylin,xaxt="n", yaxt="n", xlab=" ", ylab=" ", main="Linear Association")
title(ylab="Y", line=0, cex.lab=1.2)
title(xlab="X", line=0, cex.lab=1.2)

#Simulate a non-linear X-Y relationship and plot
ynonlin<-exp(x)+rnorm(100,0,0.5)
plot(x,ynonlin, xlim=c(-0.5,3), yaxt="n", xaxt="n", xlab=" ", ylab=" ", main="Non-linear Association")
title(ylab="Y", line=0, cex.lab=1.2)
title(xlab="X", line=0, cex.lab=1.2)

#Example 1: Investigating the relationship between birthweight and length of pregancy
model1<-lm(Birth.Weight~Gestational.Days, data=data)
summary(model1)

#Example 2: Investigating the relationship between birthweight and mother's smoking status.
model2<-lm(Birth.Weight~factor(Maternal.Smoker), data=data)
summary(model2)

#Example 1: Hypothesis tests
summary(model1)

#Confidence intervals for beta_1
confint(model1, parm=2, level = 0.95)

#Confidence interval for a fitted value 
new.data<-data.frame(Gestational.Days=280)
predict(model1, newdata=new.data, interval="confidence", level=0.95)

#Prediction interval
predict(model1, newdata=new.data, interval="prediction", level=0.95)

#Set the graphical space so that two plots are shown side-by-side in one row
par(mfrow=c(1,2))

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

# Model 3: Relating birthweight to length of pregnancy and mother's height
model3<-lm(Birth.Weight~Gestational.Days+Maternal.Height, data=data)
summary(model3)

#What are the mean gestational days and mothers height in our data?
summary(data$Gestational.Days)
summary(data$Maternal.Height)

#Create new (centered) variables in our data
data$Gestational.Days.Centered<-data$Gestational.Days-mean(data$Gestational.Days)
data$Maternal.Height.Centered<-data$Maternal.Height-mean(data$Maternal.Height)

#Redefine Model 3 using the centered variables
model3<-lm(Birth.Weight~Gestational.Days.Centered+Maternal.Height.Centered, data=data)
summary(model3)

#Create variable for height group
data$Maternal.Height.Category<-1
data$Maternal.Height.Category[data$Maternal.Height>62 & data$Maternal.Height<=64]<-2
data$Maternal.Height.Category[data$Maternal.Height>64 & data$Maternal.Height<=66]<-3
data$Maternal.Height.Category[data$Maternal.Height>66]<-4
table(data$Maternal.Height.Category)

#Model 4: Relating birthweight to length of pregnancy and mother's height group. 
model4<-lm(Birth.Weight~factor(Maternal.Height.Category)+Gestational.Days, data=data)
summary(model4)

#The coefficient of determination
summary(model1)

# F-test
summary(model1)

# F-test using anova()
anova(model1)

#ANOVA for Model 3 
summary(model3)

anova(model1, model3)

anova(model2)
summary(model2)
