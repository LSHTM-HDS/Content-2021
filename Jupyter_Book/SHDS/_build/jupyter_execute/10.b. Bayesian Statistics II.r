library(boot)
ydata <- cd4$oneyear - cd4$baseline
data <- cbind(cd4, y=ydata)
data
summary(ydata)


