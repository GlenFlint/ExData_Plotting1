plot2 <- function() {
  con <- dget("2007-2-1,2_household_power_consumption.txt")
  
  plot(con$dt, con$Global_active_power, type="n", 
       xlab = "", ylab = "Global Active Power (kilowatts)")
  lines(con$dt, con$Global_active_power)
  
  dev.copy(png, "plot2.png")
  dev.off()
}