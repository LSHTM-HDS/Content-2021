# Observed data 
n<- 20
y<- c(0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0)

# MLE
k <- sum(y)
ybar <- k/n
beta_hat <- log(ybar/(1 - ybar))

# Set range of betas over which to evaluate functions
beta <- seq(-1.5, 1, by = 0.004)

# Likelihood and loglikelihoods function
L <- exp(beta*k)/(1 + exp(beta))^n
l <- beta*k - n*log(1 + exp(beta))

# Likelihood ratio and log likelihood ratio
LR <- L/(exp(beta_hat*k)/(1 + exp(beta_hat))^n)
llr <- l - (beta_hat*k - n*log(1 + exp(beta_hat)))


# Graph the four functions
par(mfrow = c(2, 2)) 

plot(beta, L, type = "l", col="blue", main="Likelihood", ylab="L(beta)")
abline(v=beta_hat, col="orange", lty=3)

plot(beta, l, type = "l", col="blue", main="Log-likelihood", ylab="l(beta)")
abline(v=beta_hat, col="orange", lty=3)

plot(beta, LR, type = "l", col="blue", main="Likelihood ratio", ylab="LR(beta)")
abline(v=beta_hat, col="orange", lty=3)

plot(beta, llr, type = "l", col="blue", main="Log-likelihood ratio", ylab="llr(beta)")
abline(v=beta_hat, col="orange", lty=3)



options(repr.plot.width=4, repr.plot.height=4)
par(mfrow = c(1, 1)) 
plot(beta, llr, col="blue", type = "l", main="CI from log-likelihood ratio", ylab="llr(beta)")
abline(v=beta_hat, col="orange", lty=3)
abline(h=-1.92, col="red")

abline(v=-1.34, col="orange", lty=4)
abline(v=0.48, col="orange", lty=4)




# Obtain S (i.e. the SE(beta_hat))
SE <- sqrt((n*exp(beta_hat)/(1 + exp(beta_hat))^2)^(-1))

# Obtain quadratic approximation to log-likelihood ratio:
f<- -1/2*((beta - beta_hat)/SE)^2 

# Plot
options(repr.plot.width=4, repr.plot.height=4)
par(mfrow = c(1, 1)) 
plot(beta, llr, col="blue", type = "l", main="Quadratic approxmiation (green) to \n log-likelihood ratio (blue)", ylab="llr(beta)")
lines(beta, f, col="green", type = "l")

# indicate MLE
abline(v=beta_hat, col="orange", lty=3)

# indicate log likelihood ratio confidence interval
abline(h=-1.92, col="red")
abline(v=-1.34, col="orange", lty=4)
abline(v=0.48, col="orange", lty=4)

# Plot
options(repr.plot.width=4, repr.plot.height=4)
par(mfrow = c(1, 1)) 
plot(beta, llr, col="blue", type = "l", main="Two types of 95% CI", ylab="llr(beta)")
lines(beta, f, col="green", type = "l", ylab="llr(beta)")

# indicate MLE
abline(v=beta_hat, col="orange", lty=3)

# indicate log likelihood ratio confidence interval
abline(h=-1.92, col="red")
abline(v=-1.34, col="orange", lty=4)
abline(v=0.48, col="orange", lty=4)

# indicate Wald-type confidence interval (from quadratic approximation)
lower_lim <- beta_hat - 1.96*SE
upper_lim <- beta_hat + 1.96*SE
abline(v=lower_lim, col="purple", lty=4)
abline(v=upper_lim, col="purple", lty=4)


