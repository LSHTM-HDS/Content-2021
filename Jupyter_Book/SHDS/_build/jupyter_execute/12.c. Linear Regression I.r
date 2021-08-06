data<- read.csv('https://www.inferentialthinking.com/data/baby.csv')

# Set the plot area into a 1x2 array
par(mfrow=c(1,2))
options(repr.plot.height=5)

#Example 1: Scatter Plot
plot(data$Birth.Weight, data$Gestational.Days,  main="Example 1", 
     xlab="Gestational Days", ylab="Birthweight (oz)", pch=19)

#Example 2: Box plot
boxplot(data$Birth.Weight~data$Maternal.Smoker, main="Example 2", xlab="Mother smokes", ylab="Birthweight (oz)")

