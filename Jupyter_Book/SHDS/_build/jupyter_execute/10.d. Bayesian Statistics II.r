options(repr.plot.width=7, repr.plot.height=5)
x <- seq(-2, 2, 0.01)
#plot the prior 
y1 <- dnorm(x, mean=0, sd=sqrt(0.1))
plot(x, y1, type="l", lwd=1, col="blue", ylim=c(0,3), ylab="Density", xlab=expression(mu))
legend("topleft", legend=c("Prior distribution", "Distribution of mean of y", "Posterior distribution"),
       col=c("blue", "red", "purple"), lty=1)
#plot the observed distribution 
y2 <- dnorm(x, mean=0.805, sd=sqrt(0.7/20))
lines(x, y2, type="l", lwd=1, col="red")
y3 <- dnorm(x, mean=0.596, sd=sqrt(0.0259))
lines(x, y3, type="l", lwd=1, col="purple")
