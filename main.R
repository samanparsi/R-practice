myfunction <- function() { #function deceleration#
  
  x <- rnorm(100)
  mean(x)
}

second <- function(x){ #another function#
  x + rnorm((length(x)))
}

#to use function in console first you have to introduce it
#via  source("FILENAME")  .note that you should first save  the file.
#or just copy paste it. Also every change requires new sourcing.
#It is possible to source from multiple files 

##part 2 ##
# "<-" assignment operator
#print (x) print function
#types are dynamic , the compiler decides the type automatically.
##This is comment symbol##
#R uses vectors for storing data automatically. Therefore the output of a single
#value integer is being shown like this :[1] 2
#x<- 1:20 creates a vector from 1 to 20 try it
#every thing in R are objects from this atomic classes: character , numbers ,
#integer , complex , logical
# vector contains a SINGLE type of atomic class.
#empty vector "vector()"
#lists can have different types

#numbers are always always stored x.xx by defualt.
#if you want integer "1L"
#inf is being used for infinite value
#NaN undefined value.also a missing value is being shown by it
#R objects possible attributes : names,dimnames,dimensions,class,length
#user defined attributes are allowed.

#c functions can be used for creating vectors:
x<- c(0.5,0.6)
y<- c(TRUE,FALSE)
z<- c(T,F)
#if you put give to elements in this format you will get a vector converted in 
#one of the formats. So be carefull there will be no errors.
as.numeric(x) #changes x to a numeric function. other types are
#allowed if possible
# FALSE=0 TRUE=1

L<- list(1,"a",TRUE,1+4i) #this is allowed

#matrixs are vectors with dymentions. They are columns wise created in R
m<- matrix(1:6,nrow=2, ncol=3)
dim(m)

#factors: representing categorical data. lm() , glm() 
#they are discrete values and can
#be ladder data (military ranks) or not(male,female)
f<- factor(c("yes","yes","no","yes", "no"))
table(f)
unclass(f)
#base on alphabet , by default you will get default level unless you declare it
# by adding in in factor function

#missing value: is.na() , is.nan() for mathematical values
#NA values are having class , NAN is also a NA.
na1<-c(1,2,NA,NaN)
is.na(na1)
is.nan(na1)

#data frames: a formatted organized database.
#they have special attr like row.names
#read.table() , read.csv()
#data.matrix() converts them into matrix when every thing is in same class
myframe<- data.frame(foo=1:4,bar=c(T,T,F,F))

#each element of vector can be named:
#x<- 1:3    #names(x)<-c("foo","bar","norf")
#x<- list(a=1,b=2,c=3) list also can get names 
#names can be called by $a
#matrix can have names for dimensions only 
#dimnames(m)<-list(c("a","b"),c("c","d"))

