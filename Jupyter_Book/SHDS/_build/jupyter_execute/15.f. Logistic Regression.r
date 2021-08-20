dementia <- read.csv("Practicals/Datasets/Dementia/dementia2.csv")
dementia1 <- glm(dementia ~ sex, data = dementia, family = binomial(link="logit"))
summary(dementia1)

exp(coefficients(dementia1))

dementia2 <- glm(dementia ~ age, data = dementia, family = binomial(link="logit"))
summary(dementia2)

exp(coefficients(dementia2))


