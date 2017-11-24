###############################################################################
# Object: plot1.R
# Purpose: show data for plot 1
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
hist(dt$Global_active_power, xlab="Global Active Power (kilowats)", main="Global Active Power", col="red")
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()

