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



