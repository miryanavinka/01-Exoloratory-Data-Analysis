setwd("C:/Users/Miryana Vinka/Dropbox/22 R/Exploratory Data Analysis/Week 1/Project 1")

library(data.table)

### Inputting data
data <- data.table::fread(input = "household_power_consumption.txt", na.strings = "?")

### Making Plots

## Plot 2
# Turning off scientific notation
options(scipen=999)

# Filtering data to 2007-02-01 and 2007-02-02
subset <- data[data$Date %in% c("1/2/2007","2/2/2007") , ]

# Changing date and time type
date_time <- strptime(paste(subset$Date, subset$Time, sep = " "), "%d/%m/%Y %H:%M:%S")


# Plotting
gap <- as.numeric(subset$Global_active_power)

png("plot2.png", width = 480, height = 480)
plot(date_time, gap, type = "l", xlab = "", 
     ylab = "Global Active Power (kilowatts)")

dev.off()
