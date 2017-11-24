###############################################################################
# Object: plot3.R
# Purpose: three line plots together
# o submetering(1-3) vs Day of Week
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

#vectors
sub1 <- as.numeric(dt$Sub_metering_1)
sub2 <- as.numeric(dt$Sub_metering_2)
sub3 <- as.numeric(dt$Sub_metering_3)
x <- as_datetime(dt$DateTime) #dates

#plotting the data
png("plot3.png", width=480, height=480)

plot(x, sub1, type="l", ylab="Energy Sub Metering")
lines(x, sub2, type="l", col="red")
lines(x, sub3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))

dev.off()
