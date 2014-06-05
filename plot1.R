## Exploratory Data Analysis - Assignment 1
## Plot 1 --> generates histogram in file 'plot1.png'
plot1 <- function()
{
    ## getParsedData returns the subset of the household_power_consumption.txt data set
    ## from '1/2/2007' to '2/2/2007'.
    ## refer to the file getParsedData.R for source code
    data <- getParsedData();
    
    ## create PNG file
    png("plot1.png", bg="white", width=480, height=480)
    
    ## plot histogram
    hist(data$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
    
    ## close the graphics device
    dev.off()
}