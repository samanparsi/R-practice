df<-read.csv("Stores.csv")
head(df) #top of the file
tail(df,n=3) #last 3 lines
summary(df) #a simple summary of all the data set
str(df) # a better summary of the data set
quantile(df$Items_Available,probs=c(0.5,0.75,0.9))#given quantiles , default 4

table(df$Store.ID, useNA="ifany") #creates table of data set. useNA will check 
#NA's and return them 
#table can create 2 dimension tables.
sum(is.na(df$Store_Sales)) #count number of NA
any(is.na(df$Store.ID)) #is any NA? ture or flase 
all(df$Items_Available>1000) #is all of items are bigger than 1000
colSums(is.na(df)) 
all(colSums(is.na(d)))

# %in% checks for partial matches 

DF=as.data.frame(df) #changing it to a data frame
DF
xt<-xtabs(Store_Area ~ Daily_Customer_Count + Store_Sales,data=df)
xt #calculating store store sales related to store area categorized by store
#are

ftable(xt) #creates flat table
object.size(df)
