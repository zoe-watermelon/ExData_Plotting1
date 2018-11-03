##load the data
hpc_data <- read.table("household_power_consumption.txt", header = TRUE, na.strings = "?", sep = ";", stringsAsFactors = F)
hpc <- subset(hpc_data, Date == "1/2/2007"| Date == "2/2/2007")

##check the class of Global_active_power
class(hpc$Global_active_power)

##draw the plot
png("plot1.png", width=480, height=480)
hist(hpc$Global_active_power, col = "red", main = "Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off() 


