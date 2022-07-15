x<-"saman"

for (letter in x){
  print(letter)
}
#the format used in python allowed in here
#we can uses nested for loops but its slow and hard to read

y<-if(x==3){
  5
} else{
  0
}

for (i in 1:4) print (x[i]) #only if for has one statement

###most of the code is similar to python, it is easy and agile to develop
#use seq_leg() in order to create a progressing loop
count<-0
while (count<10){
  print(count)
  count<-count+1
} #careful it can go to infinity LOL
#####the condition's are being checked from LEFT to RIGHT !!!####
#repeat{code} is going to always performed unless we call break 
#I don't like repeat 
for (i in 1:100){
  if (i<=20){
    #skip the first 02 iter
    next
  }
}
#above code is used to skip or control the loop using "next"