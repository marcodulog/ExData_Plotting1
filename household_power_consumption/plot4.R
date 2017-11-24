###############################################################################
# Object: plot4.R
# Purpose: four plots together
# o Global Active Power
# o submetering(1-3) vs Day of Week
# o Voltage
# o Global Active Power with multiple breaks
# Date: November 23, 2017 - Happy Thanksgiving USA
# Author: Marco Dulog
#
# Modification Log:
# 2017-11-23 - initial creation
###############################################################################
setwd("D:/git/ExData_Plotting1/household_power_consumption")
rm(list=ls())
source("CleanData.R")

#vectors
sub1 <- as.numeric(dt$Sub_metering_1)
sub2 <- as.numeric(dt$Sub_metering_2)
sub3 <- as.numeric(dt$Sub_metering_3)
datetime <- as_datetime(dt$DateTime) #dates


#plotting the data

gap <- as.numeric(dt$Global_active_power) 
volt<- as.numeric(dt$Voltage)
grp <- as.numeric(dt$Global_reactive_power)

png("plot4.png", width=480, height=480)
  par(mfrow=c(2,2))
  #first graph 
  plot(datetime, gap, type="l", xlab="", ylab="Gloabl Active Power")
  
  #second graph
  plot(datetime, volt, type="l", xlab="datetime", ylab="Voltage")
  
  #third graph
  plot(datetime, sub1, type="l", ylab="Energy Sub Metering")
    lines(datetime, sub2, type="l", col="red")
    lines(datetime, sub3, type="l", col="blue")
    legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"),bty="o")

  #fourth graph    
  plot(datetime, grp, type="l", ylab="Global_reactive_power")
dev.off()
