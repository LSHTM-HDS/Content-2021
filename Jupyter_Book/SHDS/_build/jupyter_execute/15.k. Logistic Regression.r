x1 <- rnorm(1000, 0, 1)
y <- (x1 <= 0)*1

data_sep <- data.frame(y,x1)

model_sep <- glm(y ~ x1, data = data_sep, family = binomial(link="logit"))

dementia <- read.csv("Practicals/Datasets/Dementia/dementia2.csv")
dementia2 <- glm(dementia ~ sex + age + bmi, data = dementia, family = binomial(link="logit"))
summary(dementia2)
options(repr.plot.height=5, repr.plot.width=5)
plot(dementia2, which = 4)


