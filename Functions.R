#Here i will right some function examples for future use

add2<- function(x,y){
  x+y
} #add2 is function name. it adds to numbers and returns the answer
#notice there is no return statement 

above10<- function(x){
  use<-x>10 #checks if x>10 and puts a boolean value into use
  x[use] #returns numbers in x which are bigger than 10, note this function 
         #can accept arrays 
}

columnmean<- function(y, removeNA= TRUE){
  nc<-ncol(y) #lets find how many columns y has
  means<- numeric(nc) #creating a mean array with size of nc to store the values
  for (i in 1:nc){
    means[i]<-mean(y[,i],no.rm=removeNA)
    } #calculate mean for each column
  means
}

##functions can have default values##

#just like python we can match the parsed arguments to suitable function
#with the same name automatically 
args(lm) #see defaults and required args
#it is possible part of argument name , if there was no exact match it would 
#search for partial match and positional match. note that the answer must be 
#uniq

f<- function (a,b=1,c=2,d=NULL){} #a has no default value, b and c not 

#R has lazy evaluation. arguments are being checked if they are requeird
f<-function(a,b){
  a^2
}
f(2)
#no error will be shown, we don't need it so R wouldn't check for it.
f<-function(a,b){
  print (a)
  print (b)
  
}
f(45)
#this gives error because b is needed. note a is being printed.

#the 3 dot argument ...
#it's for extending a functions and creating a copy with some changes
#this way it will copy other stuff and just changes replaced parts
myplot<- function(x,y,type="1",...){
  plot(x,y,type=type,...)
}#just type is being set to "1" nothing else would be different
#also we can use it to add things to generic functions.
#Also we can use it if the number of arguments can not be known in advanced
args(paste)
args(cat)
#this 2 take a lot of  input thus they have ... at first argument.


#anything after ... MUST BE NAMED EXACTLY , no partial match for them.
paste("a","b",sep=":")
paste("a","b",se=":") #run this













