##load the data
hpc_data <- read.table("household_power_consumption.txt", header = TRUE, na.strings = "?", sep = ";", stringsAsFactors = F)
hpc <- subset(hpc_data, Date == "1/2/2007"| Date == "2/2/2007")

##standalize the format of date and time
ptime <- paste(hpc$Date, hpc$Time, sep=" ")
stime <- strptime(ptime, "%d/%m/%Y %H:%M:%S") 

##draw the plot
png("plot2.png", width=480, height=480)
plot(stime, hpc$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()