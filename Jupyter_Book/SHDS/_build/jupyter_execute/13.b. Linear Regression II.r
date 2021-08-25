data<- read.csv('https://www.inferentialthinking.com/data/baby.csv')
# Calculate maternal BMI (with conversion factor due to measurement in lb and in)
data$Maternal.BMI <- 703*data$Maternal.Pregnancy.Weight/(data$Maternal.Height)**2

# Categorise the BMI values
data$Maternal.BMIcat <-1
data$Maternal.BMIcat[data$Maternal.BMI>=18.5 & data$Maternal.BMI<25]<-2
data$Maternal.BMIcat[data$Maternal.BMI>=25   & data$Maternal.BMI<30]<-3
data$Maternal.BMIcat[data$Maternal.BMI>=30]<-4

# Tabulate the BMI categories
table(data$Maternal.BMIcat)

# Model 3: Relating birthweight to length of pregnancy and mother's height group. 
model3<-lm(Birth.Weight~factor(Maternal.BMIcat), data=data)
summary(model3)

confint(model3, level=0.95)

# Remove maternal BMI from the model (i.e. a constant-only model)
model3_without<-lm(Birth.Weight~1, data=data)

anova(model3, model3_without)


