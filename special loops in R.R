#R has some special optimized loops.
#1 lapply it takes a list and applies a function each elemnt and you will get 
#the result in form a of a list. ALWAYS
x<-list(a=1:5,b=rnorm(10))
lapply(x,mean)
#if you pass vectors as elements of list you will get one answer
#for each element of list. one per each vector.min and max args are
#being used to limit the number of iterations
#sapply does the same just returns a vector 

#2 apply is to evaluate a function over the margins of an array
#its good for less typing and in command line
#it gets an array x , A Margin which margins should retained
#FUN is a function

x<-matrix(rnorm(200),20,20)
apply(x,2,mean)#taking means of each column, reducing the dimensions
apply(x,1,sum)#this will preserve all the columns and collapses all the columns
#this margin number refers to the dimension of the tensor

#3 mapply , it applies a function in parallel to another objects
#it gets some lists and applies a function into each of this list or one for all
#mapply(fun1,fun2,...,list1,list2,...)
mapply(rep,1:4,4:1)
noise<-function(n,mean,sd){
  rnorm(n,mean,sd)
}
noise(5,1,2)
noise(1:5,1:5,2)
mapply(noise,1:5,1:5,2)

#4 tapply: is used to apply a function to a part of a vector
#it gets a vector , indexes , functions , and whether you wnat simplify
x<-c(rnorm(10),runif(10),rnorm(10,1))
f<-gl(3,10)
tapply(x,f,mean)
#if you dont simplify , a list will be returned


#5 Split: