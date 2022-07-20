#json_data<-jsonlite::fromJSON("URL")
file_url<-"https://www.w3schools.com/xml/simple.xml"
xml_file<-XML::xmlTreeParse(file_url,useInternalNodes = TRUE)
rootnode<-XML::xmlRoot(xml_file)
XML::xmlName(rootnode)

