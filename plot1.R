plot1 <- function() {
  con <- dget("2007-2-1,2_household_power_consumption.txt")
  
  hist(con$Global_active_power, 
       xlab = "Global Active Power (kilowatts)", 
       col="red", main="Global Active Power")
  
  dev.copy(png, "plot1.png")
  dev.off()
}