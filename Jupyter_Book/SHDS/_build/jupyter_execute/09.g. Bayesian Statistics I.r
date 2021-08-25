p <- seq(0, 1, 0.01)
options(repr.plot.width=7, repr.plot.height=4)
plot(p, dbeta(p, 6, 15), type="l", main="Beta(6, 15) Distribution  \n with 95% credible interval",  xlab=expression(theta), ylab="density")
abline(v=0.475, lty="dashed")
abline(v=0.107,  lty="dashed")

#Area under the 95% HDPI
pbeta(0.475, 6, 15)-pbeta(0.107, 6, 15)

#The interval (0.09, 0.465) also a 95% credible interval 
pbeta(0.465, 6, 15)-pbeta(0.09, 6, 15)




