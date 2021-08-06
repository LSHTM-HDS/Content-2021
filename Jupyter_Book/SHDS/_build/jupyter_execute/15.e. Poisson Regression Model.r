## Simulate Data
set.seed(42)
n<-100
lambda<-6
counts <- rpois(n, lambda)
country <-  factor(sample(1:4, n, replace=T), levels=1:4, labels=c("England","Northern Ireland","Scotland","Wales"))
treatment <- factor(gl(2,n/2), levels=1:2, labels=c("Active Arm", "Placebo Arm"))
print(df <- data.frame(treatment, country, counts))
summary(df)  


#Counts by treatment
with(df, tapply(counts, treatment, function(x) {
  sprintf("M (SD) = %1.2f (%1.2f)", mean(x), sd(x))
}))
#Counts by country
with(df, tapply(counts, country, function(x) {
  sprintf("M (SD) = %1.2f (%1.2f)", mean(x), sd(x))
}))

options(repr.plot.width=4, repr.plot.height=3)
install.packages("ggplot2")
library(ggplot2)
g1<-ggplot(df, aes(counts, fill = treatment)) +
  geom_histogram(binwidth=.5, position="dodge")
g1 + labs(fill = "Treament Arm", x="Admission Count")

g2<-ggplot(df, aes(counts, fill = country)) +
  geom_histogram(binwidth=.5, position="dodge")
g2 + labs(fill = "Country", x = "Admission Count")

summary(m1 <- glm(counts ~ treatment + country, family="poisson", data=df))

#Robust SE's
install.packages("sandwich")
library(sandwich)
cov <- vcovHC(m1, type="HC0")
se <- sqrt(diag(cov))
robust.SE <- cbind(Estimate= coef(m1), "Robust SE" = se, "Pr(>|z|)" = 2 * pnorm(abs(coef(m1)/se)))
robust.SE


pchisq(m1$deviance, df=m1$df.residual, lower.tail=FALSE)

# Update m1 model dropping country
m2 <- update(m1, . ~ . - country)
# Test models with chi square test
anova(m2, m1, test="Chisq")


dp <- data.frame(treatment = factor(1, levels=1, labels=c("Placebo Arm")), country = factor(1:4, levels = 1:4, labels = levels(df$country)))
dp

predict(m1, dp, type="response", se.fit=TRUE)

options(repr.plot.width=10, repr.plot.height=3)
## Calculate and store predicted values
df$pred <- predict(m1, type="response")

# Create the plot
ggplot(df, aes(x = country, y = pred, colour = treatment)) +
  geom_point(aes(y = pred)) + labs(x = "Treatment Arm", y = "Expected number of admissions")

