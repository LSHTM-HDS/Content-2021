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

library("ggplot2")
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
