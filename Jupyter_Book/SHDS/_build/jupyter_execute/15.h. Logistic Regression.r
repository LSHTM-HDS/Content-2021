dementia2 <- glm(dementia ~ sex + age + bmi, data = dementia, family = binomial(link="logit"))

summary(dementia2)

exp(coefficients(dementia2))


