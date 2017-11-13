data <- read.table("./household_power_consumption.txt",header=TRUE,sep=";")
data <- subset(data,data$Date=="1/2/2007" | data$Date=="2/2/2007")
data$Global_active_power <- as.numeric(data$Global_active_power)

png("plot1.png", width=480, height=480)
par(mfrow = c(1,1))
hist(data$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")
dev.off()