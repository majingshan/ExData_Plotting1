png("plot3.png")
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
					dec=".",
					stringsAsFactors=FALSE)
					
date <- strptime(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S")

plot(date, data$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(date, data$Sub_metering_2, col = "red")
lines(date, data$Sub_metering_3, col = "blue")				
legend("topright", lty = c(1,1,1), lwd = c(1,1,1),
		col = c("black", "red", "blue"), 
		legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
		
dev.off()