library(readxl)
library(ggplot2)
library(xts)
library(zoo)
setwd("C:/Users/yhari/OneDrive/デスクトップ/R")
data=read_excel("test.xlsx")
data=as.data.frame(data)

data_xts=as.xts(read.zoo(data))

data_monthly= apply.monthly(data_xts,sum)
data_monthly_df= as.data.frame(data_monthly)

#test
