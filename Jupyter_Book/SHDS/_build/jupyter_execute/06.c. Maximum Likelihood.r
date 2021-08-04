n <- 8  #  make this sample size bigger, and see what happens to the histogram! 

#MLEs will be stored in this vector
mle <- rep(0, 100)

for (i in 1:100){
  #generate a sample of size n from an exponential distribution with lambda=0.0818
  sample <- rexp(n, rate=0.0818)
  #calculate the MLE (the reciprocal mean of the sample) and store it 
  mle[i] <- 1/mean(sample)
}

#plot a histogram of the 100 MLEs 
hist(mle, breaks=20, 
     xlim=c(0, 0.3), 
     main="Histogram of MLE", 
     xlab="MLE")
#add red line to indicate true lambda 
abline(v=12.22, col="red")
