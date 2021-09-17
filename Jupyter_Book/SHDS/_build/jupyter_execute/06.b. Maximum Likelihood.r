options(repr.plot.width=4, repr.plot.height=4)

#six independent observations for waiting times 
obs <- c(8.75, 10.20, 15.29, 7.89, 7.04, 12.04, 19.04, 17.50)
n <- length(obs)

#possible values for the parameter lambda
lambda <- seq(0, 2, 0.01)

#plot the log-likelihood
plot(lambda, n*log(lambda) - lambda*sum(obs), type="l",lwd=2, 
     xlab= expression(lambda), ylim=c(-100,0),
     ylab="Log-likelihood")

1/mean(obs)


