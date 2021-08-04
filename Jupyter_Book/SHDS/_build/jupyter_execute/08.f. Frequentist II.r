# Manual calculation of p-value: 
2*(1-pnorm(1.76))

# Manual calculation of p-value (two equivalent calculations)
2*pt(-1.644, 46)

# Read in data (emotional distress scores in control and intervention group)
dist0 <- c(5, 2, 5,  7,  6,  7,  7,  5,  8,  6,  6,  9,  4,  5,  9,  7,  9,  5,  6, 10,  9,  4,  6,  6,  5,  7)
dist1<- c(5,  5,  6,  6, 1,  5, 10,  7,  3,  6,  7,  8,  6,  7,  5,  4,  5,  6,  4,  6,  3,  5)

# T-test using inbuilt R package
dist <- c(dist0, dist1) 
gp <- c(rep(0, 26), rep(1, 22))

t.test(dist~gp, var.equal=TRUE)


