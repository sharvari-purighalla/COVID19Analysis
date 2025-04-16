rm(list=ls()) # removes all previously stored variables
library(Hmisc)

data <- read.csv("~/Desktop/COVID19Analysis/COVID19_line_list_data.csv")
describe(data)

