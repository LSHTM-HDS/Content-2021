# Labels for the graph
lab1 <- expression(mu - 3)
lab2 <- expression(mu - 2)
lab3 <- expression(mu - 1)
lab4 <- expression(mu)
lab5 <- expression(mu + 1)
lab6 <- expression(mu + 2)
lab7 <- expression(mu + 3)

# Plot a normal distribution centred around a value "mu" with an unspecified dispersion
options(repr.plot.width=5, repr.plot.height=5)
plot(seq(-4, 4, by=.05), xaxt="none",  xlab=" ", ylab="Density", 
     dnorm(seq(-4, 4, by=.05), 0, 1.52), col="blue", type = "l")
abline(v=0, col="black")
axis(1, seq(-3, 3, by=1), labels=c(lab1, lab2, lab3, lab4, lab5, lab6, lab7))

options(repr.plot.width=5, repr.plot.height=5)
plot(seq(-6, 6, by=.05), xaxt="none",  xlab=" ", ylab="Density", 
     dnorm(seq(-6, 6, by=.05), 0, 1.52), col="blue", type = "l")
abline(v=0, col="black")
abline(v=c(-2.98, 2.98), col="green", lty=2)
axis(1, seq(-3, 3, by=1), labels=c(lab1, lab2, lab3, lab4, lab5, lab6, lab7))
lines(seq(-6.17, -0.22, by=.02), rep(0.005, 298), col="orange")
lines(seq(-3.56, 2.38, by=.02), rep(0.13, 298), col="orange")
lines(seq(-0.98, 4.98, by=.02), rep(0.03, 299), col="orange")
points(c(-3.2, -0.6, 2), c(0.005, 0.13, 0.03), col = "orange")
text(4.5, 0.07, "2.5% of means")
text(-4.5, 0.07, "2.5% of means")

# Our sample of data (ages for 10 sampled researchers)
ages <- c(28.1,27.5,25,29.9,29.7,29.9,39.9,33.6,21.3,30.8)

# Sample mean (estimate of the population mean)
mean(ages)

# Display the lower and upper limits of the confidence interval
mean(ages) - 1.96*1.52
mean(ages) + 1.96*1.52

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



