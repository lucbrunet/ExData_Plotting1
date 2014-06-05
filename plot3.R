## Exploratory Data Analysis - Assignment 1
## Plot 3 --> generates histogram in file 'plot3.png'
plot3 <- function()
{
    ## getParsedData returns the subset of the household_power_consumption.txt data set
    ## from '1/2/2007' to '2/2/2007'.
    ## refer to the file getParsedData.R for source code
    data <- getParsedData();
    
    ## grab data for x and y axis
    xaxisdata <- strptime(paste(data$Date, data$Time, sep = " "), format="%d/%m/%Y %H:%M:%S");
    yaxisdata1 <- data$Sub_metering_1
    yaxisdata2 <- data$Sub_metering_2
    yaxisdata3 <- data$Sub_metering_3
    
    ## create PNG file
    png("plot3.png", bg="white", width=480, height=480)
    
    ## plot
    plot(xaxisdata, yaxisdata1, main="", type="n", ylab="Energy sub metering", xlab="")
    lines(xaxisdata, yaxisdata1, type="l", col="black")
    lines(xaxisdata, yaxisdata2, type="l", col="red")
    lines(xaxisdata, yaxisdata3, type="l", col="blue")
    legend(x= "topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
           lty=c(1, 1, 1), col=c("black", "red", "blue"))
    
    ## close the graphics device
    dev.off()
}