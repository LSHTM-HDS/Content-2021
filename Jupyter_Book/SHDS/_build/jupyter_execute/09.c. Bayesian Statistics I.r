# Function takes as arguments the sensitivitiy of the test (sensi) 
# and the specificity (speci)

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

options(repr.plot.width=6.5, repr.plot.height=5.5)
leafplot(sensi=0.7, speci=0.95)


#See what happens to the plot when you change sensitivity and specificity! 
#leafplot(0.95, 0.8)


