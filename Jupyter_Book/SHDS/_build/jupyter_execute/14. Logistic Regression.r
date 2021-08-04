options(repr.plot.width=4, repr.plot.height=3)

# we load the dataset and display its first lines
dementia <- read.csv("dementia.csv")
head(dementia)

names(dementia)

dementia1 <- glm(dementia ~ sex, data = dementia, family = binomial(link="logit"))

summary(dementia1)

exp(coefficients(dementia1))

library(tidyverse, quietly = TRUE)
dementia %>% group_by(sex, dementia) %>% count()

round(1707 / (107981 + 1707),4)

dementia2 <- glm(dementia ~ sex + age + bmi, data = dementia, family = binomial(link="logit"))

summary(dementia2)

exp(coefficients(dementia2))

dementia3 <- glm(dementia ~ bmi + sex + bmi:sex, data = dementia, family = binomial(link="logit"))
summary(dementia3)

cbind("coefficients" = coefficients(dementia3), "exp(coefficients)" = exp(coefficients(dementia3)))

vcov(dementia3)

sqrt(diag(vcov(dementia3)))

# first we estimate the null model
dementia0 <- glm(dementia ~ 1, data = dementia, family = binomial(link="logit")) 

# then we compute the McFadden pseudo-R2 for each model
R2_McFadden1 <- as.double(1 - logLik(dementia1)/logLik(dementia0))
R2_McFadden2 <- as.double(1 - logLik(dementia2)/logLik(dementia0))
R2_McFadden3 <- as.double(1 - logLik(dementia3)/logLik(dementia0))

round(c("model 1" = R2_McFadden1, "model 2" = R2_McFadden2, "model 3" = R2_McFadden3),3)

library(ResourceSelection, quietly = TRUE)

for (g in 5:15) {
	print(hoslem.test(dementia2$y, fitted(dementia2), g=g)$p.value)
}

predicted <- predict(dementia2, dementia)
predicted_resp <- predict(dementia2, dementia, type = "response")

cbind("linear predictor" = head(predicted), "response" = head(predicted_resp), "response from linear predictor" = head(exp(predicted)/(1+(exp(predicted)))))

library(pROC, quietly = TRUE)
plot(roc(response = dementia$dementia, predictor = predicted_resp), print.auc = TRUE)

dementia %>% mutate(logit = log(predicted_resp/(1-predicted_resp))) %>% ggplot(aes(x = age, y = logit)) + geom_point() + geom_smooth()
dementia %>% mutate(logit = log(predicted_resp/(1-predicted_resp))) %>% ggplot(aes(x = bmi, y = logit)) + geom_point() + geom_smooth()

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


