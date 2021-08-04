set.seed(78234) 

# Read in the sample of 10 ages
ages <- c(28.1,27.5,25,29.9,29.7,29.9,39.9,33.6,21.3,30.8)

# Draw bootstrap samples 
bootstrap_samples <- lapply(1:1039, function(i) sample(ages, replace = T))

# Calculate sample means in each bootstrap sample
r.mean <- sapply(bootstrap_samples, mean)

# Obtain the 2.5th and 97.5th percentiles of the sample means across bootstrap samples
(q<-quantile(r.mean, c(0.025, 0.975)))
         
# Draw the approximate sampling distribution with the percentile confidence limits marked in red
options(repr.plot.width=4.5, repr.plot.height=4.5)
hist(r.mean, freq=FALSE, main="Sampling distribution for mean \n with percentile 95% confidence limits", xlab="Sample mean")
abline(v=q, col="red")

