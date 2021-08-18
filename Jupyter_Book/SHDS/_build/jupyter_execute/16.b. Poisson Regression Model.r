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
