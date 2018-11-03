##load the data
hpc_data <- read.table("household_power_consumption.txt", header = TRUE, na.strings = "?", sep = ";", stringsAsFactors = F)
hpc <- subset(hpc_data, Date == "1/2/2007"| Date == "2/2/2007")

##standalize the format of date and time
ptime <- paste(hpc$Date, hpc$Time, sep=" ")
stime <- strptime(ptime, "%d/%m/%Y %H:%M:%S") 

##draw the plot
png("plot3.png", width=480, height=480)
plot(stime, hpc$Sub_metering_1, type="l", ylab="Energy Submetering", xlab="")
lines(stime, hpc$Sub_metering_2, type="l", col="red")
lines(stime, hpc$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2, col=c("black", "red", "blue"))
dev.off()