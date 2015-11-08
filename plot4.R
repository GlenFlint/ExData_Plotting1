plot4 <- function() {
  con <- dget("2007-2-1,2_household_power_consumption.txt")
  par(mfrow=c(2,2), cex=0.6)
  
  plot(con$dt, con$Global_active_power, type="n", 
       xlab = "", ylab = "Global Active Power")
  lines(con$dt, con$Global_active_power)
  
  plot(con$dt, con$Voltage, type="n", 
       xlab = "datetime", ylab = "Voltage")
  lines(con$dt, con$Voltage)

  plot(con$dt, con$Sub_metering_1, type="n", 
       xlab = "", ylab = "Energy sub metering")
  lines(con$dt, con$Sub_metering_1)
  lines(con$dt, con$Sub_metering_2, col="red")
  lines(con$dt, con$Sub_metering_3, col="blue")
  
  columnNames <-colnames(con)
  
  legend("topright",
         legend = columnNames[grep("Sub_metering_", columnNames)],
         bty="n",
         lty=c(1,1,1),
         col=c("black", "red", "blue"))
  
  plot(con$dt, con$Global_reactive_power, type="n", 
       xlab = "datetime", ylab = "Global_reactive_power")
  lines(con$dt, con$Global_reactive_power)
  
  dev.copy(png, "plot4.png")
  dev.off()
}