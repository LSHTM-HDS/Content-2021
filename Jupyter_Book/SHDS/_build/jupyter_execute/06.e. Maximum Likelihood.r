options(repr.plot.width=4, repr.plot.height=3)
 x <- 4; n<-10
 theta_vals <- seq(0,1,0.01)
 LLR <- dbinom(x,n,theta_vals,log=T)-dbinom(x,n,x/n,log=T)
 plot(theta_vals,LLR,type='l',col='blue')
# add additional things
lines(x=theta_vals,y=rep(0,length(theta_vals)),lty=2)

options(repr.plot.width=4, repr.plot.height=3)
 x <- 4; n<-10
 theta_vals <- seq(0,1,0.01)
 LLR <- dbinom(x,n,theta_vals,log=T)-dbinom(x,n,x/n,log=T)
 plot(theta_vals,LLR,type='l',col='blue',ylim=c(-5,0.01))
# add additional things
lines(x=theta_vals,y=rep(0,length(theta_vals)),lty=2)
lines(x=rep(0.5,2),y=c(-10,0.01),col='red',lty=1)

options(repr.plot.width=4, repr.plot.height=3)
 ns<-c(10,20,40,80,160)
# assume we have an 'unfair coin' with heads being more likely than tails
# rather than taking a random sample, assume a sample consistent with the null hypothesis - this is so the MLE remains 0.5
 x1<-round(ns[1]*0.4,0)
 x2<-round(ns[2]*0.4,0)
 x3<-round(ns[3]*0.4,0)
 x4<-round(ns[4]*0.4,0) 
 x5<-round(ns[5]*0.4,0) 
 theta_vals <- seq(0,1,0.01)
 LLR01 <- dbinom(x1,ns[1],theta_vals,log=T)-dbinom(x1,ns[1],x1/ns[1],log=T)
 LLR02 <- dbinom(x2,ns[2],theta_vals,log=T)-dbinom(x2,ns[2],x2/ns[2],log=T)
 LLR03 <- dbinom(x3,ns[3],theta_vals,log=T)-dbinom(x3,ns[3],x3/ns[3],log=T)
 LLR04 <- dbinom(x4,ns[4],theta_vals,log=T)-dbinom(x4,ns[4],x4/ns[4],log=T)
 LLR05 <- dbinom(x5,ns[5],theta_vals,log=T)-dbinom(x5,ns[5],x5/ns[5],log=T)
 plot(theta_vals,LLR01,type='l',col='blue',lwd=0.5,ylim=c(-5,0.01))
# compare to large sample sizes
 lines(theta_vals,LLR02,col='blue',lwd=1)
 lines(theta_vals,LLR03,col='blue',lwd=1.5)
lines(theta_vals,LLR04,col='blue',lwd=2)
lines(theta_vals,LLR05,col='blue',lwd=2.5)
lines(x=theta_vals,y=rep(0,length(theta_vals)),lty=2)
lines(x=rep(0.5,2),y=c(-10,0.01),col='red',lty=1)

options(repr.plot.width=4, repr.plot.height=3)
 x <- 4; n<-10
 sampl <- rbinom(n=1000,size=n,prob=0.5)
mles <- sampl/n 
 hist(mles,col="red",breaks=30)


