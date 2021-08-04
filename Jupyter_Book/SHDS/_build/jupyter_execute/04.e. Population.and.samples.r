# Our sample of data (ages for 10 sampled researchers)
ages <- c(28.1,27.5,25,29.9,29.7,29.9,39.9,33.6,21.3,30.8)

# Randomly select 10,000 bootstrap samples (each of size 10)
set.seed(532) 
bootstrap_samples <- lapply(1:10000, function(i) sample(ages, replace = T))

# List some of the bootstrap samples
print("First bootstrap sample:")
bootstrap_samples[1]
print("Third bootstrap sample:")
bootstrap_samples[3]
print("500th bootstrap sample:")
bootstrap_samples[500]

# Calculate the sample mean in each of the bootstrap samples
r.mean <- sapply(bootstrap_samples, mean)

# Draw a histogram with a red vertical line indicating the original sample mean age
options(repr.plot.width=4.5, repr.plot.height=4.5)
hist(r.mean, freq=FALSE, main="Distribution of sample means \n across the bootstrap samples", xlab="Bootstrap sample means")
abline(v=mean(ages),col="red")

sqrt(var(r.mean))

# Histogram of estimates (sample means) in bootstrap samples
options(repr.plot.width=4.5, repr.plot.height=4.5)
hist(r.mean, freq=FALSE, main="Distribution of sample means \n across the bootstrap samples", xlab="Bootstrap sample means")

# Add the normal distribution which most closely follows the histogram
lines(seq(25, 35, by=.5), dnorm(seq(25, 35, by=.5), mean(ages), 1.52), col="orange",lwd=2)

# Add the bootstrap approximation to the sampling distribution: normal distribution with mean mu=30 SD=1.51
lines(seq(25, 35, by=.5), dnorm(seq(25, 35, by=.5), 30, 1.51), col="red",lwd=2)

# Add the algebraic sampling distribution: normal distribution with mean mu=30 SD=1.52
lines(seq(25, 35, by=.5), dnorm(seq(25, 35, by=.5), 30, 1.52), col="blue",lwd=2)

# Add a vertical line at original sample mean
abline(v=mean(ages),col="green",lwd=2)


