png("plot1.png")

hist(as.numeric(subdata$Global_active_power), xlab = "Global active power (kilowatts)", main = "Global active power", col = "red")

dev.off()