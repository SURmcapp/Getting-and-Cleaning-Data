library(XML)
library(httr)

fileUrl <- "http://espn.go.com/nfl/team/_/name/bal/baltimore-ravens"

#doc <- htmlTreeParse(fileUrl,useInternal=TRUE)
doc <- htmlParse(rawToChar(GET(fileUrl)$content))

rootNode <- xmlRoot(doc)
xmlName(rootNode)

scores <- xpathSApply(doc,"//li[@class='Schedule__Score p12 nowrap db fr tar']",xmlValue)
#teams <- xpathSApply(doc,"//li[@class='team-name']",xmlValue)

