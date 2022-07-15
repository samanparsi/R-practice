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

#functions can have default values
#just like python we can match the parsed arguments to suitable function
#with the same name automatically 