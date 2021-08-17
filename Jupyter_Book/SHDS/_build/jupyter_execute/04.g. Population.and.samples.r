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
options(repr.plot.width=5, repr.plot.height=5)
hist(sample.props[1:10000], 
     freq=FALSE, breaks=seq(-0.05, 0.95, 0.05), col="cornflowerblue",
     ylim=c(0, 6), xlab="Sample proportion with emotional distress", 
     main="Sampling distribution of the sample \n proportion (samples of n=10)")  # the "\n" makes a newline


### Summarise the approximate sampling distribution

# The mean value of the different sample means
mean(sample.props)

# The whole sampling distribution (i.e. the PDF)
table(sample.props)/different_studies

x10n <- sapply(rep(10,1000),function(x) rbinom(x, 1, p = 0.28)) 
x10mean <- colMeans(x10n)
                            
x50n <- sapply(rep(50,1000),function(x) rbinom(x, 1, p = 0.28)) 
x50mean <- colMeans(x50n)

x100n <- sapply(rep(100,1000),function(x) rbinom(x, 1, p = 0.28)) 
x100mean <- colMeans(x100n)

x1000n <- sapply(rep(1000,1000),function(x) rbinom(x, 1, p = 0.28)) 
x1000mean <- colMeans(x1000n)
                                
par(mfrow=c(2,2))
hist(x10mean,col="cornflowerblue",xlim=c(0,1), main="Sampling distribution of the sample \n proportion (samples of n=10)")
hist(x50mean,col="cornflowerblue",xlim=c(0,1), main="Sampling distribution of the sample \n proportion (samples of n=50)")        
hist(x100mean,col="cornflowerblue",xlim=c(0,1), main="Sampling distribution of the sample \n proportion (samples of n=100)")
hist(x1000mean,col="cornflowerblue",xlim=c(0,1), main="Sampling distribution of the sample \n proportion (samples of n=1,000)")


