# BMI dataset
dat <- read.csv("Practicals/Datasets/BMI/MindsetMatters.csv")
head(dat)
#remove observations with no BMI data
dat <- dat[!is.na(dat$BMI),]
#estimate mu and sigma
mu <- mean(dat$BMI)
print(paste0("value of mu is ",round(mu,2)))
sig <- sd(dat$BMI)
print(paste0("value of sigma is ",round(sig,2)))

# a) if we were to use Z tables within R (to illustrate the point)

z_min <- (18.5-mu)/sig
z_max <- (24.9-mu)/sig

# note when using pnorm we don't need to specify mu and sigma as the 
# function assumes mu=0 and sigma=1 unless specified.
print(paste0("z_max is ",round(z_max,2)," and z_min is ",round(z_min,2)))
print(paste0("Probability of having a healthy BMI is (z-score) ",round(pnorm(z_max)-pnorm(z_min),3)))

# b) if we were to directly estimate
 
print(paste0("Probability of having a healthy BMI is (direct) ",round(pnorm(24.9,mu,sig)-pnorm(18.5,mu,sig),3)))

# c) provide a sanity check against the data
options(repr.plot.width=4, repr.plot.height=3)
library(ggplot2)

ggplot(dat,aes(x=BMI)) + geom_histogram(bins = 30,fill="steelblue",col="grey80") +
    geom_vline(xintercept = c(18.5,24.9))
#hist(dat$BMI,col="steelblue")
#abline(v=c(18.5,24.9),lty=2)
print(paste0("Within the data a healthy BMI is seen ",
             round(100*((sum(dat$BMI<24.9)-sum(dat$BMI<18.5))/length(dat$BMI)),1),"%"))


