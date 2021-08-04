options(repr.plot.width=6, repr.plot.height=3)
options(warn=-1)

#Number of data points
n<-10^6
#Lambda is the shape parameter which indicates the average number of events in the given time interval.
#Please try different values.
lambda<- 3

#Simulate Sample
y = rpois(n, lambda);  up=max(y)

#Plot histogram 
hist(y, prob=T, br=(-1:up)+.5, col="skyblue2", xlab="x", 
  main="Simulated Sample from Poisson distribution with Normal Approximation", cex.main=0.8)
curve(dnorm(x, mean(y), sd(y)), col="red", lwd=2, add=T)
#dnorm here is creating the PDF for a normal distribution to plot on the graph. 

options(repr.plot.width=4, repr.plot.height=3)
#Number of data points
n<-10^6
#Lambda is the shape parameter which indicates the average number of events in the given time interval.
#Please try different values.
lambda<- 3

#Simulate Sample
y = rpois(n, lambda)

#Plot 
plot(ecdf(y), col = "blue", lwd = 2,
     main = "CDF of Simulated Poisson Sample", ylab="Probability", xlab="Count")

options(repr.plot.width=4, repr.plot.height=3)
#Input some counts
data<- c(26,30,54,25,70,52,51,26,67,18,21,29,17,12,18,35,30,36,36,21,24,18,10,43,28,15,26,27,14,29,19,29,31,41,20,44,42,26,19,16,39,28,21,39,29,20,21,24,17,13,15,15,16,28)
#Histogram of counts
hist(data, xlab="Counts", main="Histogram of Counts", col="blue")
#Mean
print("The Mean is")
mean(data)
#Variance
print("The Variance is")
var(data)
# The mean is a lot smaller than the variance, suggesting overdispersion


options(repr.plot.width=4, repr.plot.height=3)
#Install package
install.packages("VGAM")
library("VGAM")

#Number of data points to simulate
n=100
#Shape
lambda=3
#Probability of drawing a zero
p=0.5
#Create data
zip<-rzipois(n, lambda = lambda, pstr0 = p)
#Plot Histogram
hist(zip, xlab="Counts", main="Histogram of Counts", col="blue")

## Simulate Data
set.seed(42)
n<-100
lambda<-6
counts <- rpois(n, lambda)
country <-  factor(sample(1:4, n, replace=T), levels=1:4, labels=c("England","Northern Ireland","Scotland","Wales"))
treatment <- factor(gl(2,n/2), levels=1:2, labels=c("Active Arm", "Placebo Arm"))
print(df <- data.frame(treatment, country, counts))
summary(df)  


#Counts by treatment
with(df, tapply(counts, treatment, function(x) {
  sprintf("M (SD) = %1.2f (%1.2f)", mean(x), sd(x))
}))
#Counts by country
with(df, tapply(counts, country, function(x) {
  sprintf("M (SD) = %1.2f (%1.2f)", mean(x), sd(x))
}))

options(repr.plot.width=4, repr.plot.height=3)
install.packages("ggplot2")
library(ggplot2)
g1<-ggplot(df, aes(counts, fill = treatment)) +
  geom_histogram(binwidth=.5, position="dodge")
g1 + labs(fill = "Treament Arm", x="Admission Count")

g2<-ggplot(df, aes(counts, fill = country)) +
  geom_histogram(binwidth=.5, position="dodge")
g2 + labs(fill = "Country", x = "Admission Count")

summary(m1 <- glm(counts ~ treatment + country, family="poisson", data=df))

#Robust SE's
install.packages("sandwich")
library(sandwich)
cov <- vcovHC(m1, type="HC0")
se <- sqrt(diag(cov))
robust.SE <- cbind(Estimate= coef(m1), "Robust SE" = se, "Pr(>|z|)" = 2 * pnorm(abs(coef(m1)/se)))
robust.SE


pchisq(m1$deviance, df=m1$df.residual, lower.tail=FALSE)

# Update m1 model dropping country
m2 <- update(m1, . ~ . - country)
# Test models with chi square test
anova(m2, m1, test="Chisq")


dp <- data.frame(treatment = factor(1, levels=1, labels=c("Placebo Arm")), country = factor(1:4, levels = 1:4, labels = levels(df$country)))
dp

predict(m1, dp, type="response", se.fit=TRUE)

options(repr.plot.width=10, repr.plot.height=3)
## Calculate and store predicted values
df$pred <- predict(m1, type="response")

# Create the plot
ggplot(df, aes(x = country, y = pred, colour = treatment)) +
  geom_point(aes(y = pred)) + labs(x = "Treatment Arm", y = "Expected number of admissions")


#Install package
#install.packages("VGAM")
#install.packages("pscl")
library("VGAM")
library(pscl)

#Number of data points to simulate
n=100
#Shape
lambda=3
#Probability of drawing a zero
p=0.5
#Create data
alcohol_count<-rzipois(n, lambda = lambda, pstr0 = p)
country <-  factor(sample(1:4, n, replace=T), levels=1:4, labels=c("England","Northern Ireland","Scotland","Wales"))
treatment <- factor(gl(2,n/2), levels=1:2, labels=c("Placebo Arm","Active Arm"))
print(df <- data.frame(treatment, country, alcohol_count))
summary(df)
summary(m1 <- zeroinfl(alcohol_count ~ country + treatment, data = df))

df$pred <- predict(m1, type="response")
# Create the plot
ggplot(df, aes(x = country, y = pred, colour = treatment)) +
  geom_point(aes(y = pred)) +
  labs(x = "Treatment Arm", y = "Expected number of drinks in a day")

#Zero inflated model
summary(m1 <- zeroinfl(alcohol_count ~ treatment + country , data = df))
#Poisson regression
summary(m2 <- glm(alcohol_count ~ treatment + country, family="poisson", data=df))
#Vuong test
vuong(m1, m2)
