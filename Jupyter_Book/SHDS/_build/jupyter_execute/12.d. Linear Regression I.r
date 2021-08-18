### Set random number generator
set.seed(24082098)

#Set graphical display to show 2 plots in a row
par(mfrow=c(1,2))
options(repr.plot.height=5)

#Simulate a linear X-Y relationship and plot
x<-rnorm(100,0,1)
ylin<-x+rnorm(100,0,0.5)
plot(x,ylin,xaxt="n", yaxt="n", xlab=" ", ylab=" ", main="Linear Association")
title(ylab="Y", line=0, cex.lab=1.2)
title(xlab="X", line=0, cex.lab=1.2)

#Simulate a non-linear X-Y relationship and plot
ynonlin<-exp(x)+rnorm(100,0,0.5)
plot(x,ynonlin, xlim=c(-0.5,3), yaxt="n", xaxt="n", xlab=" ", ylab=" ", main="Non-linear Association")
title(ylab="Y", line=0, cex.lab=1.2)
title(xlab="X", line=0, cex.lab=1.2)


