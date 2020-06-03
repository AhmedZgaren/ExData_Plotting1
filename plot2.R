#Change plotting device to png and name the file
png("plot2.png")

plot(my_data$timestamp, my_data$Global_active_power,type = "n", xlab="", ylab = "Global active power(kilowatts)")

lines(x= my_data$timestamp, y=my_data$Global_active_power)

dev.off()
