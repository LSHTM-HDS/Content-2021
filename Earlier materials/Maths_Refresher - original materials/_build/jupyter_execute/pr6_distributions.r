X <- rbinom(50, 1, 0.3)
head(X)
mean(X)
var(X)

X <- rbinom(100, 10, 0.48)
head(X)
hist(X)
mean(X)
var(X)

X <- rpois(100, 3)
head(X)
hist(X)
mean(X)
var(X)

mu <- 13
sigma2 <- 5
X <- rnorm(1000, mu, sigma2)
hist(X)

rate <- 30
X <- rexp(1000, rate)
hist(X)

df <- 18
T <- rt(1000, 18)
hist(T)

df <- 18
Q <- rchisq(1000, 18)
hist(Q)

df1 <- 4
df2 <- 9
U1 <- rchisq(1000, df1)
U2 <- rchisq(1000, df2)
F <-(U1/df1)/(U2/df2)
hist(F)

alpha <- 10
beta <- 2

X <- rbeta(1000, alpha, beta, ncp = 0)

hist(X)


