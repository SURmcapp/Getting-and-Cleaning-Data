df <- read.csv(file = 'getdata_data_ss06hid.csv')

hv <- aggregate(df$ST, by=list(df$ST,df$VAL), FUN=length)

dat <- readxl::read_xlsx('getdata_data_DATA.gov_NGAP.xlsx', range = 'G18:O23')

url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml" 

web <- read_xml(url)

wt <- xml_text(web)

wt2 <- xmlTreeParse(sub('s', '', url), useInternal=TRUE)

rootNode <- xmlRoot(wt2)

zipcodes <- xpathSApply(rootNode, '//zipcode',xmlValue)

