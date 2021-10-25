setwd("C:/Users/Miryana Vinka/Dropbox/22 R/Exploratory Data Analysis/Week 1/Project 1")

library(data.table)

### Inputting data
data <- data.table::fread(input = "household_power_consumption.txt", na.strings = "?")

### Making Plots

## Plot 2
# Turning off scientific notation
options(scipen=999)

# Changing date type
data$Date <- as.Date(data$Date, "%d/%m/%Y") 

# Filtering data to 2007-02-01 and 2007-02-02
data <- data[(Date >= "2007-02-01") & (Date <= "2007-02-02")]

# Convert date and time
date_time <- paste(as.Date(data$Date), data$Time)
data$date_time <- as.POSIXct(date_time)


# Plotting
png("plot2.png", width = 480, height = 480)

with(data, plot(Global_active_power ~ date_time, type = "l", xlab = "", 
                ylab = "Global Active Power (kilowatts)"))

dev.off()
