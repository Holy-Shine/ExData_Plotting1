# load dataset
source('./data_utils.R')
df <- load_data()

# open device
png(filename = './plot3.png', width = 480, height = 480, units='px')

# set locale to english
Sys.setlocale(category = 'LC_ALL', locale = 'english')

# plot and generate png file
plot(df$DateTime, 
     df$Sub_metering_1, 
     xlab = '', 
     ylab = 'Energy sub metering', 
     type = 'l')

lines(df$DateTime, df$Sub_metering_2, col = 'red')
lines(df$DateTime, df$Sub_metering_3, col = 'blue')

legend('topright', 
       col = c('black', 'red', 'blue'), 
       legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), 
       lwd = 1)

dev.off()
