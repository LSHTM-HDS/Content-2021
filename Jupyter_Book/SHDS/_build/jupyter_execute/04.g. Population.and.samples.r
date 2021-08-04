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


