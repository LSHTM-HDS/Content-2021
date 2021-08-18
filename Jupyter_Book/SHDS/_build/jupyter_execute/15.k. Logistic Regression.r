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


