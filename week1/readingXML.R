library(XML)
fileUrl <- "http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
doc <- xmlTreeParse(fileUrl,useInternal=TRUE)
rootNode <- xmlRoot(doc)
xmlName(rootNode)

zipcodes <- xpathSApply(rootNode,"//zipcode",xmlValue)

xmlZipcodesDT <- data.table(zipcode = zipcodes)

xmlZipcodesDT[zipcode == '21231', .N]
