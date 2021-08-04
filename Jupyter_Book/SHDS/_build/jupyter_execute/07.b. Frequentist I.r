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
