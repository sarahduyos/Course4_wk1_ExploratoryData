# Plot 2

# read data
data <- read.delim('household_power_consumption_small.txt',sep = ";")

# Format date
data$Date <- as.Date(data$Date,"%d/%m/%Y")

# Format time
strptime(data$Time,format="%H:%M:%S")

# Start graph
png("plot2.png",480,480)

# Customize
plot(data$Global_active_power,
     main="",
     xlab="",
     ylab="Globale Active Power (kilowatts)",
     type="l",
     xaxt='n')

# Add the axis
axis(1,c(0,nrow(data)/2,nrow(data)),c("Thu","Fri","Sat"))

# close device
dev.off()