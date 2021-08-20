# we load the dataset and display its first lines
dementia <- read.csv("Practicals/Datasets/Dementia/dementia2.csv")
head(dementia)

# Tabulate dementia diagnosis versus sex (dementia = right-hand column)
(table<-table(dementia$sex, dementia$dementia))
prop.table(table, 1)

# Box plot of age by dementia diagnosis
par(mfrow=c(1,2))
options(repr.plot.height=4, repr.plot.width=5)
boxplot(dementia$age ~ dementia$dementia, main="Age", xlab="Dementia diagnosis", ylab="Baseline age (years)")
boxplot(dementia$bmi ~ dementia$dementia, main="BMI", xlab="Dementia diagnosis", ylab="Baseline BMI")



