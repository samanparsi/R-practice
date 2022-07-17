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
#rnorm: generate random normal variates with given mean and std


#dnorm: evaluate normal probability density at a point 

#pnorm:evaluate the comulative distrbutin function for a normal distribution

#rpois: generate random Poisson variates with a given rate

