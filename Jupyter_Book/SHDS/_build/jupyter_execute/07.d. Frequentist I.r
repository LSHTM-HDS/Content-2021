# Population parameters
mu <- 30
sd <- 4.8
n_in_study <- 10

# Take 100 samples of 10 people, measure ages in each set of 10 people
different_studies <- 100
set.seed(1042)
study_measurements_age <- list()
for (i in 1:different_studies) {
  study_measurements_age[[i]] <-  rnorm(n_in_study, mu, sd)
}

# Calculate sample means and 95% confidence intervals
sample.means   <- sapply(study_measurements_age, mean)
sample.cl   <- sapply(study_measurements_age, function (x) mean(x) - 1.96*1.52)
sample.cu   <- sapply(study_measurements_age, function (x) mean(x) + 1.96*1.52)

# Extract means and CIs for samples which miss the true value
out <- ((sample.cl>30) + (sample.cu<30))
out.means <- sample.means[out==1]
out.cl <- sample.cl[out==1]
out.cu <- sample.cu[out==1]
out.samples <- seq(1,100,1)[out==1]

# Graph all the sample means and CIs
options(repr.plot.width=5, repr.plot.height=6)
plot(sample.means, seq(1,100,1), main="95% confidence intervals for the mean age", xlab="Mean age (years)", ylab="Sample", xlim=c(22, 38), ylim=c(0, 100), yaxt="none")
abline(v=30)
for (i in 1:100) {
  eval(lines(c(sample.cl[i], sample.cu[i]), c(i, i)))
}

# Highlight the CIs that miss the true value in red
points(out.means, out.samples, col="red")
for (i in 1:length(out.samples)) {
  eval(lines(c(out.cl[i], out.cu[i]), c(out.samples[i],out.samples[i]), col="red"))
}

