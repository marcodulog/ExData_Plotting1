###############################################################################
# Object: CleanData.R
# Purpose: Extract the data needed to graph project 1
# Date: November 23, 2017 - Happy Thanksgiving USA
# Author: Marco Dulog
#
# Modification Log:
# 2017-11-23 - initial creation
###############################################################################
# requires
require(data.table)
require(sqldf)
require(lubridate)

#set working directory
setwd("D:/git/ExData_Plotting1/household_power_consumption")
dt<-read.table("D:/Files/household_power_consumption.txt", header=TRUE, sep=";", na="?")
#limit to only the data that we need
dt<-sqldf("select * from dt where Date in ('1/2/2007','2/2/2007')")
#create new datetime variable
dt$DateTime<-with(dt, dmy_hms(paste(Date,Time)))
#remove the first two columns - we combined them together
dt<-dt[-c(1,2)]
