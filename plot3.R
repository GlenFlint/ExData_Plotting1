plot3 <- function() {
  con <- dget("2007-2-1,2_household_power_consumption.txt")
  
  plot(con$dt, con$Sub_metering_1, type="n", 
       xlab = "", ylab = "Energy sub metering")
  lines(con$dt, con$Sub_metering_1)
  lines(con$dt, con$Sub_metering_2, col="red")
  lines(con$dt, con$Sub_metering_3, col="blue")
  
  columnNames <-colnames(con)
  
  legend("topright",
         legend = columnNames[grep("Sub_metering_", columnNames)],
         cex = 0.75,
         y.intersp=1.0,
         lty=c(1,1,1),
         col=c("black", "red", "blue"))
  
  dev.copy(png, "plot3.png")
  dev.off()
}