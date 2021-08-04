# Obtain the probability distribution function (for values x=0,1,...,8)
x <- seq(0,8)
pi <- 0.23
px <- dbinom(x, 8, pi)

# Create bar chart of PDF
options(repr.plot.width=4, repr.plot.height=4)
barplot(height=px, names=x)
