#lets setup a dataset
set.seed(13435)
x<-data.frame("var1"=sample(1:5),"var2"=sample(6:10),"var3"=sample(11:15))
x<-X[sample(1:5)];X$var2[c(1,3)]= NA
x

x[,1] #first column of data
x[,"var1"] # prints first var
x[(x$var1<=3 & x$var3>11),] # every thing in x var 1 less than 3. don't forget ,

x[which(x$var2>8),]
sort(x$var1) #sort by var1
#check sort documentation
x[order(x$var1),] #returns the data without NA
#order can take multiple inputs , priorty is with first one

######plyr  library######
arrange(x,desc(var1)) #sort x base on var1

#add columns
x$var4<-rnorm(5) #take care of dimensions please

#column binding
y<-cbind(x,rnorm(5)) #adds rnorm vector into left of x 
#just check the documentations about those keywords