## Exploratory Data Analysis - Assignment 1
## Plot 2 --> generates histogram in file 'plot2.png'
plot2 <- function()
{
    ## getParsedData returns the subset of the household_power_consumption.txt data set
    ## from '1/2/2007' to '2/2/2007'.
    ## refer to the file getParsedData.R for source code
    data <- getParsedData();
    
    ## grab data for x and y axis
    xaxisdata <- strptime(paste(data$Date, data$Time, sep = " "), format="%d/%m/%Y %H:%M:%S");
    yaxisdata <- data$Global_active_power
    
    ## create PNG file
    png("plot2.png", bg="white", width=480, height=480)
    
    ## plot
    plot(xaxisdata, yaxisdata, main="", type="n", ylab="Global Active Power (kilowatts)", xlab="")
    lines(xaxisdata, yaxisdata, type="l") 
    
    ## close the graphics device
    dev.off()
}