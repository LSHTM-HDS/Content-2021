#function takes as arguments the sensitivitiy of the test (sensi) 
#and the specificity (speci)

leafplot <- function(sensi, speci){
  
  pretest <- seq(0, 1, 0.01) #possible pre-test probabilities 
  
  #probability of having Covid-19 after a positive test result 
  pos.test <- sensi*pretest/(sensi*pretest+(1-speci)*(1-pretest))
  
  #probability of having Covid-19 after a negative test result 
  neg.test <- ((1-sensi)*(pretest))/((1-sensi)*pretest+speci*(1-pretest))
  
  #plot leaves
  plot(pretest, pos.test, type="l", col="darkgreen", 
     xlab="Pre-test Probability", ylab="Post-test Probability")
  points(pretest, neg.test, type="l", col="darkgreen")
  abline(a=0, b=1, col="darkgreen")
  legend("topleft", legend=c("Positive Test", "Negative Test"),
        col=c("Purple", "Orange"), lty=1, bg="transparent")
  
  #plot arrows 
    #we use pretest[11] to get the prevalence value of 0.1, and 
    #pretest[76] to get the prevalence value of 0.75 in the vector "pretest"
    
  arrows(pretest[11], 0, pretest[11], pos.test[11], angle=15, col="purple")
  arrows(pretest[11], pos.test[11], 0, pos.test[11], angle=15, col="purple")
  arrows(pretest[76], 0, pretest[76], neg.test[76], angle=15, col="orange")
  arrows(pretest[76], neg.test[76], 0, neg.test[76], angle=15, col="orange")
  
  }

leafplot(sensi=0.7, speci=0.95)


#See what happens to the plot when you change sensitivity and specificity! 
#leafplot(0.95, 0.8)

options(repr.plot.width=7, repr.plot.height=3)
theta <- seq(0, 1, 0.01)
par(mfrow=c(1,3))
plot(theta, dbeta(theta, 1, 1), type="l", main="Beta(1,1) Distribution", ylim=c(0,4), xlab=expression(theta), ylab="density")
plot(theta, dbeta(theta, 2, 2), type="l", main="Beta(2,2) Distribution", ylim=c(0,4), xlab=expression(theta), ylab="density")
plot(theta, dbeta(theta, 2, 9), type="l", main="Beta(2,9) Distribution", ylim=c(0,4), xlab=expression(theta), ylab="density")

p <- seq(0, 1, 0.01)
par(mfrow=c(1,3))
plot(p, dbeta(p, 5, 7), type="l",  main="Beta(5, 7) Distribution", ylim=c(0,4), xlab=expression(theta), ylab="density")
plot(p, dbeta(p, 6, 8), type="l", main="Beta(6, 8) Distribution", ylim=c(0,4), xlab=expression(theta), ylab="density")
plot(p, dbeta(p, 6, 15), type="l", main="Beta(6, 15) Distribution", ylim=c(0,4), xlab=expression(theta), ylab="density")

plot(p, dbeta(p, 6, 15), type="l", main="Beta(6, 15) Distribution with 90% credible interval",  xlab=expression(theta), ylab="density")
abline(v=0.44, lty="dashed")
abline(v=0.13,  lty="dashed")

#Area under the 90% HDPI
pbeta(0.44, 6, 15)-pbeta(0.13, 6, 15)

#The interval (0.47. 0.144) also a 90% credible interval 
pbeta(0.47, 6, 15)-pbeta(0.144, 6, 15)
