#Create variable for height group
data<- read.csv('https://www.inferentialthinking.com/data/baby.csv')
data$Maternal.Height.Category<-1
data$Maternal.Height.Category[data$Maternal.Height>62 & data$Maternal.Height<=64]<-2
data$Maternal.Height.Category[data$Maternal.Height>64 & data$Maternal.Height<=66]<-3
data$Maternal.Height.Category[data$Maternal.Height>66]<-4
table(data$Maternal.Height.Category)

#Model 4: Relating birthweight to length of pregnancy and mother's height group. 
model4<-lm(Birth.Weight~factor(Maternal.Height.Category)+Gestational.Days, data=data)
summary(model4)
