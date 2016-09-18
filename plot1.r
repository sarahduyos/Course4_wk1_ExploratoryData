## Plot 1

## Data file household_power_consumption_small.txt located in the directory where the script is executed.
# Household_power_consumption_small.txt only includes 2007-02-01 and 2007-02-02 

data <- read.delim('household_power_consumption_small.txt',sep = ";")

## Format date
data$Date <- as.Date(data$Date,"%d/%m/%Y")

# Format time
strptime(data$Time,format="%H:%M:%S")

# Create Graph
png("plot1.png",480,480)

hist(data$Global_active_power,
     main="Global Active Power",
     col="red",
     xlab="Global Active Power (kilowatts)",
     ylab="Frequency")

# Close device
dev.off()

