#STR: a diagnostic function alternative to summary
#used to compactly display the content of large objects
#roughly one line per basic object
#some basic intro
str(str)
str(lm)
x<-rnorm(100,2,4)
summary(x)
str(x)
f<-gl(40,10)
str(f)


#SIMULATION
#creating random numbers
#rnorm: generate random normal variate with given mean and std
dnorm(x,mean=0,sd=1,log=FALSE)
pnorm(q,mean=0,sd=1,lower.tail=TRUE,log.p=FALSE)
qnorm(p,mean=0,sd=1,lower.tail = TRUE,log.p=FALSE)
rnorm(n,mean,sd=1)
#dnorm: evaluate normal probability density at a point 

#pnorm:evaluate the cumulative distribution function for a normal distribution

#rpois: generate random Poisson variate with a given rate
rpois(10,1)
ppois(2,2)
#d for density   , r for random ,  p for cumulative , q for quantile 
#this comes before upper names to shape different data
x<-rnorm(10) #simply produce a vector of 10 random numbers
x<-rnorm(n=10,mean=10,sd=2)  
#setup a seed so you can repeat the seed and random numbers again and fine error
set.seed(1)
rnorm(5)
rnorm(5)
set.seed(1)
rnorm(5)


#simulate a linear model
set.seed(20)
x<-rnorm(100)
e<-rnorm(100,0,1)
y<-0.5+2*x+e
summary(y)
plot(x,y)

#if x is binary
set.seed(10)
x<-rbinorm(100,1,0.5)
e<-rnorm(100,0,1)
y<-0.5+2*x+e
summary(y)
plot(x,y)

#if we have a poisson model
set.seed(1)
x<-rnorm(100)
log.mu<-0.5+0.3*x
y<-rpois(100,exp(log.mu))
summary(y)
plot(x,)

#sample function: take a random sample from a dataset
set.seed(1)
sample(1:10,4)#take 4 random from 1 to 10
sample(1:10,5)
sample(letters,5)#take 5 sample from alphabet
sample(1:10) # it gives a random vector with random order of 1 to 10
sample(1:10,replace=TRUE)#replace allows repeating numbers to appear




