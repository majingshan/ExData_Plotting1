png("plot1.png")
data <- read.csv2("household_power_consumption.txt", 
					na.strings = "?", 
					skip = 66636, nrows = 2880,
					col.names=c("Date", 
								"Time", 
								"Global_active_power", 
								"Global_reactive_power", 
								"Voltage", 
								"Global_intensity", 
								"Sub_metering_1", 
								"Sub_metering_2", 
								"Sub_metering_3"),
					dec=".")
hist(data$Global_active_power, main="Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")
dev.off()