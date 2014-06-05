getParsedData <- function() 
{
    ## This function takes the very large data set 'household_power_consumption.txt'
    ## and parses out the data from '1/2/2007' to '2/2/2007'.  It then saves the parsed
    ## data to a separete csv file named 'parsed_household_power_consumption.txt' to speed
    ## up loading the data set on subsequent calls throughout the assignment
    
    if(!file.exists("parsed_household_power_consumption.txt"))
    {
        ## read in the large data set
        data <- read.table("household_power_consumption.txt", sep=";", header = TRUE, na.strings="?",
                           colClasses = c("character", "character", "numeric", "numeric", "numeric", 
                                          "numeric", "numeric", "numeric", "numeric"));
        
        ## extract data from using specified dates
        parseddata <- data[((data$Date == "1/2/2007") | (data$Date == "2/2/2007")),]
        
        ## save parsed data set
        write.csv(parseddata, file = "parsed_household_power_consumption.txt", row.names=FALSE);
    }
    else
    {
        ## read in the already parsed data set
        parseddata <- read.csv("parsed_household_power_consumption.txt", header = TRUE, na.strings="?", 
                               colClasses = c("character", "character", "numeric", "numeric", "numeric", 
                                              "numeric", "numeric", "numeric", "numeric"));
    }
    
    ## return the parsed data set
    return(parseddata)
}