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
