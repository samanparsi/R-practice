#It gives us a view of the overall program checkpoints and stuff like that
#why my code is slow? use profiling to find out each part of program time and 
#resource consumption
#Don't thing about it at first. first just make the code readable and running
#then try to optimize it afterward.
#measure first , don't guess , gather data

#system.time(): it takes R expressions and checks how long it takes to run it.
#it gives seconds. returns an object class of proc_time:
#-user time: time CPU used    -elapsed time: the time takes for us to see result
system.time(readLines("http://www.jhsph.edu"))
hilbert<-function(n){
  i<-1:n
  1/outer(i-1,i,"+")
}
x<-hilbert(1000)
system.time(svd(x))

#you can time all the expressions warped in braces
system.time({
  n<-1000
  r<-numeric(n)
  for(i in 1:n){
    x<-rnorm(n)
    r[i]<-mean(x)
  }
})

