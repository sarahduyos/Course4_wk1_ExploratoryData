# Plot 4

## read data
data <- read.delim('household_power_consumption_small.txt',sep = ";")

# Format the date and time
data$Date <- as.Date(data$Date,"%d/%m/%Y")
strptime(data$Time,format="%H:%M:%S")

# start graph
png("plot4.png",480,480)
par(mfrow=c(2,2))

## First plot
plot(data$Global_active_power,
     main="",
     ylab="Globale Active Power",
     xlab="",
     type="l",
     xaxt='n')

# customize
axis(1,c(0,nrow(data)/2,nrow(data)),c("Thu","Fri","Sat"))

## Second plot
plot(data$Voltage,
     main="",
     ylab="Voltage",
     xlab="datetime",
     type="l",
     xaxt='n')

# customize
axis(1,c(0,nrow(data)/2,nrow(data)),c("Thu","Fri","Sat"))

## Third plot
plot(data$Sub_metering_1,
     main="",
     ylab="Energy sub metering",
     xlab="",
     type="l",
     xaxt='n')

# customize
lines(data$Sub_metering_2,col="red")
lines(data$Sub_metering_3,col="blue")

legend("topright", lty=1, bty="n", 
       col=c("black", "red", "blue"), 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

axis(1,c(0,nrow(data)/2,nrow(data)),c("Thu","Fri","Sat"))

## Fourth Plot

plot(data$Global_reactive_power,
     main="",
     ylab="Global_reactive_power",
     xlab="datetime",
     type="l",
     xaxt='n')

# customize
axis(1,c(0,nrow(data)/2,nrow(data)),c("Thu","Fri","Sat"))


# close device
dev.off()