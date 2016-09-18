# Plot 3

## read data
data <- read.delim('household_power_consumption_small.txt',sep = ";")

## Format date and time
data$Date <- as.Date(data$Date,"%d/%m/%Y")
strptime(data$Time,format="%H:%M:%S")

## start
png("plot3.png",480,480)

plot(data$Sub_metering_1,
     main="",
     xlab="",
     ylab="Energy sub metering",
     type="l",
     xaxt='n')

# customize
lines(data$Sub_metering_2,col="red")
lines(data$Sub_metering_3,col="blue")
legend("topright", lty=1, 
       col=c("black", "red", "blue"), 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
axis(1,c(0,nrow(data)/2,nrow(data)),c("Thu","Fri","Sat"))

# close device
dev.off()