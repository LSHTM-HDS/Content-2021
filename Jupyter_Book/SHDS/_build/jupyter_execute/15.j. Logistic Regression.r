dementia3 <- glm(dementia ~ bmi + sex + bmi:sex, data = dementia, family = binomial(link="logit"))
summary(dementia3)

cbind("coefficients" = coefficients(dementia3), "exp(coefficients)" = exp(coefficients(dementia3)))

vcov(dementia3)

sqrt(diag(vcov(dementia3)))


