#SQL is so important for acquiring data. 
#Data is in Databases. There are tables in databases and fields in tables.
#Each row is called a record.
#MYSQL is NOT INSTALLED !!!!!!!

ucscDb<-dbConnect(mysql(),user="gnome",host="genome-mysql.cse.ucsc.ed")
#connects to MYSQL server in web or any host we have in host parameter
result<-dbGetQuery(ucscDb,"show databases;");dbDisconnect(uscsDb)
#the arguments in parenthesis are SQL codes ! 
#use disconnect to stop over usage of servers and public databases for good!
affyData<-dbReadTable(hg19,"affy")#picking a table and it's data
#remeber to select a part of a large database
query<-dbSendQuery(hg19,"select * from affyU133plus2 where misMatches between
                   1 and 3")
affMis<-query
quantile(affMis$misMatches)
affyMisSmall<- fetch(query,n=10);dbClearResult(query);
#stop the query after the data is being fetched.
dbDisconnect(hg19)
#Always close the connection as fast as possible!!!!

#getting data from web


con=url("https://dl.acm.org/doi/abs/10.1145/2500499")
#setting up the url variable
htmlCode=readLines(con)
close(con)
htmlCode
#it's better to use XML or JSON
#use Get from httr
library(httr)
html2=Get(url)
content2=content(thml2,as="text")
parsedHtml=htmlParse(content2,asText=TRUE)#we can authenticate("user","pass") 
#can be added to login

######################################
#learn web scraping It's important!
#####################################
#Also learn how to get data from API








