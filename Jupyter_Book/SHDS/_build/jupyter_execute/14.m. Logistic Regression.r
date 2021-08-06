x1 <- rnorm(1000, 0, 1)
y <- (x1 <= 0)*1

data_sep <- data.frame(y,x1)

model_sep <- glm(y ~ x1, data = data_sep, family = binomial(link="logit"))

plot(dementia2, which = 4)

x1 <- rnorm(1000, 0, 1)
x2 <- rnorm(1000, 0, 1)
x3 <- rnorm(1000, 0, 1)
x4 <- x1 + x2
prob = exp(x1 + x2 + x3 + x4)/(1+exp(x1 + x2 + x3 + x4))
y <- rbinom(1, 1000, prob)

data_multicol <- data.frame(y,x1,x2,x3,x4)
model_multicol <- glm(y ~ x1 + x2 + x3 + x4, data = data_sep, family = binomial(link="logit"))

install.packages("car", repos='http://cran.us.r-project.org')
library(car)

vif(model_multicol)


