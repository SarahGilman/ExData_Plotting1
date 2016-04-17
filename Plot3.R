housePower <- subset( 
    read.table("household_power_consumption.txt", sep=";", header=TRUE, na.strings="?"), 
    Date=='1/2/2007' | Date=='2/2/2007' )
housePower$DateTime <- strptime(paste(housePower$Date, housePower$Time),format="%d/%m/%Y %H:%M:%S")

png("Plot3.png", height=480, width=480)
plot(housePower$DateTime, housePower$Sub_metering_1, type='l', xlab='', ylab='Energy sub metering')
lines(housePower$DateTime, housePower$Sub_metering_2, type='l', ylab='Energy sub metering', col='red')
lines(housePower$DateTime, housePower$Sub_metering_3, type='l', ylab='Energy sub metering', col='blue')
legend('topright', c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lwd=c(1,1,1), col=c('black','red','blue'))
dev.off()
