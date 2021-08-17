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
#install.packages("VGAM")
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
