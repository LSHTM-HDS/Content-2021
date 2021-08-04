# Population parameters
mu <- 30
sd <- 4.8
n_in_each_study <- 10

# Draw samples and ages for sampled individuals, for 100 different studies
# in this example we're going to have a list which generates study_measurements_age repeatedly
different_studies <- 10000
set.seed(1042)
study_measurements_age <- list()
for (i in 1:different_studies) {
  study_measurements_age[[i]] <- round(rnorm(n_in_each_study, mu, sd),3)
}

# Print the sample data for two of the studies
print("Ages of the 10 participants selected in study 1:")
study_measurements_age[[1]]

print("Ages of the 10 participants selected in study 5:")
study_measurements_age[[5]]

options(repr.plot.width=6, repr.plot.height=6)
sample.means   <- sapply(study_measurements_age, mean)

# Draw graphs using base R
hist(sample.means[1:10000], freq=FALSE,
     breaks=c(0, 25.5, 26.5, 27.5, 28.5, 29.5, 30.5, 31.5, 32.5, 33.5, 34.5, 100), 
     xlim=c(26, 35), ylim=c(0, 0.3), col="green4",
     xlab="Sample mean age (years)", 
     main="Sampling distribution of the sample mean age \n (from samples of 10)")


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
hist(r.mean, freq=FALSE, main="Distribution of sample means across the bootstrap samples", xlab="Bootstrap sample means")
abline(v=mean(ages),col="red")

sqrt(var(r.mean))

# Histogram of estimates (sample means) in bootstrap samples
hist(r.mean, freq=FALSE, main="Distribution of sample means across the bootstrap samples", xlab="Bootstrap sample means")

# Add the normal distribution which most closely follows the histogram
lines(seq(25, 35, by=.5), dnorm(seq(25, 35, by=.5), mean(ages), 1.52), col="orange",lwd=2)

# Add the bootstrap approximation to the sampling distribution: normal distribution with mean mu=30 SD=1.51
lines(seq(25, 35, by=.5), dnorm(seq(25, 35, by=.5), 30, 1.51), col="red",lwd=2)

# Add the algebraic sampling distribution: normal distribution with mean mu=30 SD=1.52
lines(seq(25, 35, by=.5), dnorm(seq(25, 35, by=.5), 30, 1.52), col="blue",lwd=2)

# Add a vertical line at original sample mean
abline(v=mean(ages),col="red",lwd=2)



# Population parameters
pi <- 0.28
n_in_study <- 10

# Simulate data from multiple studies
different_studies <- 10000
set.seed(1042)
study_measurements_ed <- list()
for (i in 1:different_studies) {
  study_measurements_ed[[i]] <- rbinom(n_in_study, 1, pi)
}

# Calculate the proportion in each study
sample.props   <- sapply(study_measurements_ed, mean)

# Draw graphs
hist(sample.props[1:10000], 
     freq=FALSE, breaks=seq(-0.05, 0.95, 0.05), col="green4",
     ylim=c(0, 6), xlab="Sample proportion with emotional distress", 
     main="Sampling distribution of the sample \n proportion (samples of n=10)")  # the "\n" makes a newline


### Summarise the approximate sampling distribution

# The mean value of the different sample means
mean(sample.props)

# The whole sampling distribution (i.e. the PDF)
table(sample.props)/different_studies


