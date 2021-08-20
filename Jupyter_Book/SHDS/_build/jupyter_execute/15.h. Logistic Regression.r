dementia <- read.csv("Practicals/Datasets/Dementia/dementia2.csv")
dementia2 <- glm(dementia ~ sex + age + bmi, data = dementia, family = binomial(link="logit"))
summary(dementia2)

cbind(exp(coefficients(dementia2)), exp(confint(dementia2)))


