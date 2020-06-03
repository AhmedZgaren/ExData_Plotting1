#Change plotting device to png and name the file
png("plot3.png")


with(my_data, plot(timestamp, Sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "n"))

lines(my_data$timestamp, my_data$Sub_metering_1)

lines(my_data$timestamp, my_data$Sub_metering_2, col = "red" )

lines(my_data$timestamp, my_data$Sub_metering_3, col = "blue" )

legend("topright", legend = c("sub_metering_1", "sub_metering_2","sub_metering_3"), col = c("black", "red", "blue"), lty =1)

dev.off()
