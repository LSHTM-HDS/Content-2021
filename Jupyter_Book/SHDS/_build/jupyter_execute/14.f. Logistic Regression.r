dementia1 <- glm(dementia ~ sex, data = dementia, family = binomial(link="logit"))

summary(dementia1)

exp(coefficients(dementia1))

library(tidyverse, quietly = TRUE)
dementia %>% group_by(sex, dementia) %>% count()

round(1707 / (107981 + 1707),4)


