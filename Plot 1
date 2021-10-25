setwd("C:/Users/Miryana Vinka/Dropbox/22 R/Exploratory Data Analysis/Week 1/Project 1")

library(data.table)

### Inputting data
data <- data.table::fread(input = "household_power_consumption.txt", na.strings = "?")

### Making Plots

## Plot 1
# Turning off scientific notation
options(scipen=999)

# Changing date type
data$Date <- as.Date(data$Date, "%d/%m/%Y") 

# Filtering data to 2007-02-01 and 2007-02-02
data <- data[(Date >= "2007-02-01") & (Date <= "2007-02-02")]

# Plotting
png("plot1.png", width = 480, height = 480)
hist(data$Global_active_power, main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts", ylab = "Frequency", 
     col = "red")

dev.off()
