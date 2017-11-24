###############################################################################
# Object: plot2.R
# Purpose: Create a line plot against two numeric vectors
# o Global Active Power vs Day of Week
# Date: November 23, 2017 - Happy Thanksgiving USA
# Author: Marco Dulog
#
# Modification Log:
# 2017-11-23 - initial creation
###############################################################################
#remove all files first
setwd("D:/git/ExData_Plotting1/household_power_consumption")
rm(list=ls())
source("CleanData.R")
y <- as.numeric(dt$Global_active_power) 
x <- as_datetime(dt$DateTime)
plot(x, y, type="l", xlab="", ylab="Gloabl Active Power (Kilowats)")
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()
