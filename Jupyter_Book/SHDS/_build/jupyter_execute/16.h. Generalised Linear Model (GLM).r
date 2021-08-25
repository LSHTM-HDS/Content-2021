## Simulate Data
set.seed(42)
n<-100
lambda<-6
counts <- rpois(n, lambda)
country <-  factor(sample(1:4, n, replace=T), levels=1:4, labels=c("England","Northern Ireland","Scotland","Wales"))
treatment <- factor(gl(2,n/2), levels=1:2, labels=c("Active Arm", "Placebo Arm"))
df <- data.frame(treatment, country, counts)

set.seed(42)
summary(m1 <- glm(counts ~ treatment + country, family="poisson", data=df))

pchisq(m1$deviance, df=m1$df.residual, lower.tail=FALSE)
