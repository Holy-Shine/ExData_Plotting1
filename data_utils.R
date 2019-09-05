


load_data <- function(){
    library(dplyr)
    df <- tbl_df(read.table(file = 'household_power_consumption.txt',
                            header = TRUE, sep = ';', 
                            na.strings = '?',
                            stringsAsFactors = FALSE))
    
    df <- df %>%
          filter(Date %in% c('1/2/2007', '2/2/2007'))
    
    # change date format
    
    df$Date <- as.Date(df$Date, format='%d/%m/%Y')
    df$DateTime <- as.POSIXct(paste(df$Date, df$Time))
          
            
    
    df
}