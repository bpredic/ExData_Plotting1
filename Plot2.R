data <- read.table("./household_power_consumption.txt",header=TRUE,sep=";")
data <- subset(data,data$Date=="1/2/2007" | data$Date=="2/2/2007")
data$Global_active_power <- as.numeric(data$Global_active_power)

data$datetime <- strptime(paste(data$Date, data$Time, sep = ""), "%d/%m/%Y %H:%M:%S")

png("plot2.png", width=480, height=480)
par(mfrow = c(1,1))
plot(data$datetime, data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()