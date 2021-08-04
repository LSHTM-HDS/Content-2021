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

