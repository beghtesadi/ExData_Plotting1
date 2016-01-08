DataFile <- "/home/bahar/Downloads/household_power_consumption.txt"
DF <- read.table(DataFile, header = TRUE , sep = ";" , na.strings = "?" , stringsAsFactors = FALSE)
DF2 <- DF[DF$Date == "1/2/2007" | DF$Date == "2/2/2007" ,]

wdays <- strptime(paste(DF2$Date, DF2$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

png(filename = "/home/bahar/COURSERA/ExData_Plotting1/plot3.png")
plot(wdays , DF2$Sub_metering_1 , type = "n"  , ylab = "Energy sub metering" , xlab="")
lines(wdays , DF2$Sub_metering_1 , col="black")
lines(wdays , DF2$Sub_metering_2 , col="red")
lines(wdays , DF2$Sub_metering_3 , col="blue")
legend("topright" , c("Sub_metering_1" , "Sub_metering_2" , "Sub_metering_3") , lty =1, col=c('black' , 'red' , 'blue'))
dev.off()


