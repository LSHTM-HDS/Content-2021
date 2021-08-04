p <- seq(0, 1, 0.01)
options(repr.plot.width=7, repr.plot.height=4)
plot(p, dbeta(p, 6, 15), type="l", main="Beta(6, 15) Distribution  \n with 90% credible interval",  xlab=expression(theta), ylab="density")
abline(v=0.44, lty="dashed")
abline(v=0.13,  lty="dashed")

#Area under the 90% HDPI
pbeta(0.44, 6, 15)-pbeta(0.13, 6, 15)

#The interval (0.47. 0.144) also a 90% credible interval 
pbeta(0.47, 6, 15)-pbeta(0.144, 6, 15)


