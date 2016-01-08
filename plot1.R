DataFile <- "/home/bahar/Downloads/household_power_consumption.txt"
DF <- read.table(DataFile, header = TRUE , sep = ";" , na.strings = "?" , stringsAsFactors = FALSE)
DF2 <- DF[DF$Date == "1/2/2007" | DF$Date == "2/2/2007" ,]

png(filename = "/home/bahar/COURSERA/ExData_Plotting1/plot1.png")
hist(DF2$Global_active_power,  main = "Global Active Power", xlab = "Global Active Power (Kilowatts)" , ylab ="Frequency", col = 'red')
dev.off()
