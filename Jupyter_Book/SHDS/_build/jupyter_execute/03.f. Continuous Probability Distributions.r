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


