housePower <- subset( 
    read.table("household_power_consumption.txt", sep=";", header=TRUE, na.strings="?"), 
    Date=='1/2/2007' | Date=='2/2/2007' )
housePower$DateTime <- strptime(paste(housePower$Date, housePower$Time),format="%d/%m/%Y %H:%M:%S")

png("Plot2.png", height=480, width=480)
plot(housePower$DateTime, housePower$Global_active_power, type='l', ylab='Global Active Power (kilowatts)', xlab='')
dev.off()