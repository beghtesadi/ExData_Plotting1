DataFile <- "/home/bahar/Downloads/household_power_consumption.txt"
DF <- read.table(DataFile, header = TRUE , sep = ";" , na.strings = "?" , stringsAsFactors = FALSE)
DF2 <- DF[DF$Date == "1/2/2007" | DF$Date == "2/2/2007" ,]


wdays <- strptime(paste(DF2$Date, DF2$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

png(filename = "/home/bahar/COURSERA/ExData_Plotting1/plot2.png")
plot( wdays , DF2$Global_active_power , type= "l" , ylab = "Global Active Power" , xlab = "")
dev.off()
