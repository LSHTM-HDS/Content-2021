# Read in data (emotional distress scores in control and intervention group)
dist0 <- c(5, 2, 5,  7,  6,  7,  7,  5,  8,  6,  6,  9,  4,  5,  9,  7,  9,  5,  6, 10,  9,  4,  6,  6,  5,  7)
dist1<- c(5,  5,  6,  6, 1,  5, 10,  7,  3,  6,  7,  8,  6,  7,  5,  4,  5,  6,  4,  6,  3,  5)

# Calculate sample means 
print("Sample means: ")
mean(dist0)
mean(dist1)

# Calculate sample standard deviations 
print("Sample SDs: ")
sqrt(var(dist0))
sqrt(var(dist1))

# Draw histograms of the scores in each group
options(repr.plot.width=6, repr.plot.height=4)
par(mfrow=c(1,2))
hist(dist0, main="Distress score, control", xlim=c(0, 12))
hist(dist1, main="Distress score, intervention", xlim=c(0, 12))

# Sample difference in means
delta.hat <- mean(dist1) - mean(dist0)

# Randomly generate 10000 sample differences in means (following the sampling distribution under the null hypothesis)
sample.diff.means <- rnorm(10000, 0, 0.507)

# Draw the approximate sampling distribution with the percentile confidence limits marked in red
options(repr.plot.width=5, repr.plot.height=5)
hist(sample.diff.means, freq=FALSE, main="Sampling distribution for difference in sample means, \nUNDER THE NULL HYPOTHESIS", xlab="Difference in sample means", xlim=c(-2.5, 2.5), ylim=c(0, 0.8))
lines(seq(-2.5, 2.5, 0.025), dnorm(seq(-2.5, 2.5, 0.025), 0, 0.507))
abline(v=0, col="red")
abline(v=delta.hat, col="green", lty=2)

text(1.5, 0.2, "Null value")
text(-1.7, 0.4, "Observed value")
lines(c(0, 1.5), c(0.005, 0.18))
lines(c(-1.8, -0.9), c(0.38, 0.28))

# Draw the approximate sampling distribution with the percentile confidence limits marked in red
options(repr.plot.width=5, repr.plot.height=5)
hist(sample.diff.means, freq=FALSE, main="Sampling distribution for \ndifference in sample means, \nUNDER THE NULL HYPOTHESIS", xlab="Difference in sample means", ylim=c(0, 0.8), xlim=c(-3.5, 3.5))
lines(seq(-3.5, 3.5, 0.025), dnorm(seq(-3.5, 3.5, 0.025), 0, 0.507))
abline(v=0, col="red")
abline(v=delta.hat, col="green", lty=2)
abline(v=-3.5, col="orange", lty=2)
abline(v=0.02, col="blue", lty=2)

text(-2.5, 0.4, "Scenario 1: \nObserved value")
text(1.8, 0.2,  "Scenario 2: \nObserved value")
text(-1.7, 0.6, "Actual data: \nObserved value")
lines(c(0.05, 1.5), c(0.005, 0.15))
lines(c(-2.5, -3.4), c(0.35, 0.2))
lines(c(-1.8, -0.9), c(0.55, 0.48))

# Labels for graph
lab1 <- expression(- 2*SE)
lab2 <- expression(- 1*SE)
lab3 <- expression(1*SE)
lab4 <- expression(2*SE)

# Draw sampling distribution
options(repr.plot.width=5, repr.plot.height=5)
plot(seq(-4, 4, by=.05), xaxt="none",  xlab=" ", ylab="Density", 
     dnorm(seq(-4, 4, by=.05), 0, 1), col="blue", type = "l")
axis(1, seq(-2, 2, by=1), labels=c(lab1, lab2, 0, lab3, lab4))

# True population value
abline(v=0, col="red")
# 1.96 SE from population value
abline(v=c(-1.96, 1.96), col="green", lty=2)

# Some 95% confidence intervals
points(c(0.2, 1.96, 2.15), c(0.13, 0.03, 0.18), col = "orange")

lines(c(-1.76, 2.16), c(0.13, 0.13), col="orange")
lines(c(0, 3.92), c(0.03, 0.03), col ="orange")
lines(c(0.19, 4.17), c(0.18, 0.18), col ="orange")

text(2.75, 0.08, expression(hat(delta)==1.96*SE))
text(-2.6, 0.25, expression(hat(delta)<1.96*SE))
text(2.95, 0.23, expression(hat(delta)>1.96*SE))

lines(c(2.25, 3), c(0.185, 0.215), col="black")
lines(c(2.05, 2.8), c(0.035, 0.065), col="black")
lines(c(-2.4, 0.2), c(0.23, 0.14), col="black")


# Manual calculation of p-value: 
2*(1-pnorm(1.76))

# Manual calculation of p-value (two equivalent calculations)
2*pt(-1.644, 46)

# T-test using inbuilt R package
dist <- c(dist0, dist1) 
gp <- c(rep(0, 26), rep(1, 22))

t.test(dist~gp, var.equal=TRUE)


