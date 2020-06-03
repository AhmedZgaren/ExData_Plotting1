#Change plotting device to png and name the file
png("plot4.png")

par(mfrow = c(2,2), mar = c(4,4,2,2))

#plot 1
plot(my_data$timestamp, my_data$Global_active_power,type = "n", xlab="", ylab = "Global active power(kilowatts)")

lines(x= my_data$timestamp, y=my_data$Global_active_power)

#Êplot2
plot(my_data$timestamp, my_data$Voltage, xlab = "datetime", ylab = "Voltage", type = "n")

lines(my_data$timestamp, my_data$Voltage)

#plot3
with(my_data, plot(timestamp, Sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "n"))

lines(my_data$timestamp, my_data$Sub_metering_1)

lines(my_data$timestamp, my_data$Sub_metering_2, col = "red" )

lines(my_data$timestamp, my_data$Sub_metering_3, col = "blue" )

legend("topright", legend = c("sub_metering_1", "sub_metering_2","sub_metering_3"), col = c("black", "red", "blue"), lty =1, x.intersp = 0.5, y.intersp = 0.5)

#plot4
plot(my_data$timestamp, my_data$Global_reactive_power, xlab = "datetime", ylab = "Global_reactive_power", type = "n")

lines(my_data$timestamp, my_data$Global_reactive_power)

#Closing the plot devices
dev.off()