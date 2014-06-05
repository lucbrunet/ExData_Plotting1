## Exploratory Data Analysis - Assignment 1
## Plot 4 --> generates histogram in file 'plot4.png'
plot4 <- function()
{
    ## getParsedData returns the subset of the household_power_consumption.txt data set
    ## from '1/2/2007' to '2/2/2007'.
    ## refer to the file getParsedData.R for source code
    data <- getParsedData();
    
    ## grab data for x axis
    xaxisdata <- strptime(paste(data$Date, data$Time, sep = " "), format="%d/%m/%Y %H:%M:%S");
    
    ## create PNG file
    png("plot4.png", bg="white", width=480, height=480)
    
    ## plot 2x2
    par(mfrow=c(2,2))
    
    ## 1
    plot(xaxisdata, data$Global_active_power, main="", type="n", ylab="Global Active Power", xlab="")
    lines(xaxisdata, data$Global_active_power, type="l")
    
    ## 2
    plot(xaxisdata, data$Voltage, main="", type="n", ylab="Voltage", xlab="datetime")
    lines(xaxisdata, data$Voltage, type="l")
    
    ## 3
    plot(xaxisdata, data$Sub_metering_1, main="", type="n", ylab="Energy sub metering", xlab="")
    lines(xaxisdata, data$Sub_metering_1, type="l", col="black")
    lines(xaxisdata, data$Sub_metering_2, type="l", col="red")
    lines(xaxisdata, data$Sub_metering_3, type="l", col="blue")
    legend(x= "topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
           lty=c(1, 1, 1), col=c("black", "red", "blue"), bty="n")
    
    ## 4
    plot(xaxisdata, data$Global_reactive_power, main="", type="n", ylab="Global_reactive_power", xlab="datetime")
    lines(xaxisdata, data$Global_reactive_power, type="l")
    
    ## close the graphics device
    dev.off()
}