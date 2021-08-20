dementia <- read.csv("Practicals/Datasets/Dementia/dementia2.csv")
dementia1 <- glm(dementia ~ sex, data = dementia, family = binomial(link="logit"))
summary(dementia1)

confint(dementia1)

cbind(exp(coefficients(dementia1)), exp(confint(dementia1)))

confint.default(dementia1)


