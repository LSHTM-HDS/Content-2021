# BMI dataset
library(ggplot2)
dat <- read.csv("Practicals/Datasets/BMI/MindsetMatters.csv")
dat <- dat[!is.na(dat$BMI),]
options(repr.plot.width=4, repr.plot.height=3)
ggplot(dat,aes(sample=BMI)) + stat_qq() 


shapiro.test(dat$BMI)

options(repr.plot.width=4, repr.plot.height=3)
library(ggplot2)

# mother-baby dataset
dat <- read.csv("Practicals/Datasets/MotherBaby/baby.csv")
head(dat)
dat <- dat[1:100,] # we will use just the first 100 observations

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



