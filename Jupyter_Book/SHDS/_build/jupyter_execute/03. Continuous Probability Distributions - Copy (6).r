# BMI dataset

dat <- read.csv("Practicals/Datasets/BMI/MindsetMatters.csv")
head(dat)
#remove observatiosn with no BMI data
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

options(repr.plot.width=4, repr.plot.height=3)
ggplot(dat,aes(sample=BMI)) + stat_qq() 


shapiro.test(dat$BMI)

options(repr.plot.width=4, repr.plot.height=3)

library(ggplot2)
# mother-baby dataset

dat <- read.csv("Practicals/Datasets/MotherBaby/baby.csv")
head(dat)

# plot the data on maternal age
ggplot(dat,aes(x=Maternal.Age)) + geom_histogram(bins=30,fill="steelblue",col="grey80")
# plot a quantile plot of this log-normally distributed data
ggplot(dat,aes(sample=Maternal.Age)) + stat_qq()

options(repr.plot.width=4, repr.plot.height=3)

# plot the data on maternal age
ggplot(dat,aes(x=Maternal.Age)) + 
    geom_histogram(bins=30,fill="steelblue",col="grey80") +
    scale_x_continuous(trans = "log")

# but note that any analysis should be carried out on the transformed variable
y <- data.frame(age_log=log(dat$Maternal.Age))
# and here we should check whether this is normally distributed using a qqplot
ggplot(y,aes(sample=age_log)) + stat_qq()


options(repr.plot.width=4, repr.plot.height=3)

# BMI dataset

dat <- read.csv("Practicals/Datasets/BMI/MindsetMatters.csv")
head(dat)
#remove observations with no BMI data
dat <- dat[!is.na(dat$BMI),]
# scatter plot of BMI and body fat
ggplot(dat,aes(x=BMI,y=Fat)) + geom_point()

# report the mean of each variable
# note that some values of Y are missing...we need to add na.rm otherwise the estimate will be NA
mux <- mean(dat$BMI)
print(paste0("value of mu_x is ",round(mux,2)))
muy <- mean(dat$Fat,na.rm=T)
print(paste0("value of mu_y is ",round(muy,2)))

# correlation between variables
dat2 <- dat[!is.na(dat$Fat),]
round(cov(x=cbind(dat2$BMI,dat2$Fat)),3)
paste0("variance of BMI = ",round(var(dat2$BMI),3))
paste0("variance of fat = ",round(var(dat2$Fat),3))
