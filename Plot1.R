housePower <- subset( 
    read.table("household_power_consumption.txt", sep=";", header=TRUE, na.strings="?"), 
    Date=='1/2/2007' | Date=='2/2/2007' )
housePower$DateTime <- strptime(paste(housePower$Date, housePower$Time),format="%d/%m/%Y %H:%M:%S")

png("Plot1.png", height=480, width=480)
hist(housePower$Global_active_power, col='red', xlab='Global Active Power (kilowatts)', main='Global Active Power')
dev.off()