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

#Reading data 
#read.table #read.csv Read documentations about them.
#readLines for reading lines of text
#source for loading script (inverse of dump)
#degt for reading in R code files (inverse of dput)
#load for reading saved workspaces
#unserialize for reading single R projects in binary form

#data<-read.table("foo.txt")
#auto things: Skip lines with # , length , type of data 
#read.csv is the same 

#for larger datasets: Read the help page of read.table and memorize it
#know how much RAM you need to load dataset. nrow*ncol*datatypeSpace
#set comment.char=""
#use colClasses to speed thing up 
#initial <-read.table("datatable.txt",nrows=100)
#classes<- sapply(intial,class)
#tabAll<-read.table(datatable.txt",colClassses=classes)
#above codes will speed up loading all datasets by figuring out the datatypes
#for a small part of dataset and applying it to all datasets when reading it

#Textual formats: an essay for example
#R fallows Unix philosophy in this , but it is not space efficient
#dput(x) reconstructs the text into R codes into text file and
#we can get it using dget
#dump does the same but it can send every thing. reverse it via source

#we can connect R to outside world.
#file , gzfile , bzfile , url all opens other file types.
#"r" read only , "w" writing , "a" appending , other combos are allowed "rb"
#con<-gzfile("myfile"),x<-readLines(con,10)
#con<-url("address")

#Sub-setting:
#[ always returns object of same class , select one or more elements
#use it just like python
#[[ is used to extract elements of al list or data frame for single element
# $ extract elements by name.
#u<- a>3 selects elements in a which are bigger than 3 and puts them in u
#you can do multiple things in one line
#x$foo returns all the elements named foo 
#[[]] can get a list and apply it to our dataset
#x[[1][3]] first line third item
#x[1,2,drop=FALSE] this way you get data by its dimensions and base form not just
#an integer z.b

#R has Partial matching. It means if a name is not given in dataset , R searches
#for the name which has that name partial like an in hand 
#this don't work in double bracket

#Removing NA values:
#first find NAs then remove them. 
#x<-c(1,2,NA,4,NA,5)   bad<-is.na(x)
#x[!bad] returns the dataset without NA values. assign it and enjoy!
#good <-complete.cases(x,y,z,m,n) gives a vector in which all the given vectors
#the data is there and not NA. this way we can remove NAs from all of them

#vectorized operations: to prevent looping and make things easier
# we can add , compare , multiply , compare , power and other mathemathical 
#functions on all of the elemnts simply by doing it: x+y , x==y , ...
#R does it automaticly for all of our datas.

#for matrix multiplication use x%*%y insted of x*y (this does it element wise)

#Finaly load swirl using this 2 commands in order to reveiw basics of R
#library("swirl") , swirl()