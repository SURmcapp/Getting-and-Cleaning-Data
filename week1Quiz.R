df <- read.csv(file = 'getdata_data_ss06hid.csv')

hv <- aggregate(df$ST, by=list(df$ST,df$VAL), FUN=length)

dat <- readxl::read_xlsx('~/GitHub/Getting-and-Cleaning-Data/getdata_data_DATA.gov_NGAP.xlsx', range = 'G18:O23')