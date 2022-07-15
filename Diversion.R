#how R know which value to assign to which symbol?
lm<-function(x){x*x}
lm
#R should bind value to symbol. Search the environment for a symbol name
#after that namespaces of each of the packages on the search list
search()
#we can modify this. when we load a package with "library" it would be in 
#position 2 for search after globalenv.

#R has different namespaces for functions and variables.

#R scoping is just like python. 

#what is in an function env?
ls(environment(power))
y<-10
f<-function(x){
  y<-2
  y^2+g(x)
}
g<-function(x){
  x*y
}
#y in g would be 10 not 2! because the assignment in f is local 
#in R all objects must be stored in memory. all function must carry a pointer
#to their respective defining env

#optimization: there are routines for this in R
#they need a vector to be passed to a function
#when we write software which does optimization, it may be better to allow the 
#user to hold certain parameters fixed

#this functions minimizes functions so you need  to use negative log-likelihood
 #it returns a function 

#coding standards in R:
#1 Always right code just like text without any special formatting.
#2 Indenting: give a tab
#3 Limit the code in each line to 80 columns (chars)
#4 Limit functions activity into one specific task.keep it simple stupid.KISS









