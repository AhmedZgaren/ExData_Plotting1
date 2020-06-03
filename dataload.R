library(dplyr)
library(tidyr)
library(lubridate)

#Load the data
mydata <- read.csv("data\\household_power_consumption.txt", sep = ";")

#Read the variable names
names(mydata)

subdata1 <- subset(mydata, Date == "1/2/2007")
subdata2 <- subset(mydata, Date == "2/2/2007")
#Convert Date and Time column from strings to date format
my_data <- bind_rows(subdata1, subdata2)

my_data$timestamp <- paste(my_data$Date, my_data$Time, " ")
my_data$timestamp <- strptime(my_data$timestamp, "%d/%m/%Y %H:%M:%S")

sub("?", "",my_data)