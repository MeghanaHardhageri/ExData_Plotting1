setwd("~/Desktop/ExData_Plotting1")
plotData <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
finalData <- plotData[plotData$Date %in% c("1/2/2007","2/2/2007"),]
SetTime <- strptime(paste(finalData$Date, finalData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
finalData <- cbind(SetTime, finalData)
png(file = "plot2.png")
plot(finalData$SetTime, finalData$Global_active_power, type="l", col="black", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()