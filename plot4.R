# load dataset
source('./data_utils.R')
df <- load_data()

# open device
png(filename = './plot4.png', width = 480, height = 480, units='px')

# set locale to english
Sys.setlocale(category = 'LC_ALL', locale = 'english')

# plot 
par(mfrow=c(2,2))
plot(df$DateTime, 
     df$Global_active_power,
     xlab='',
     ylab='Global Active Power (kilowatt)',
     type='l')

plot(df$DateTime, 
     df$Voltage,
     xlab='datetime',
     ylab='Voltage',
     type='l')

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

plot(df$DateTime, 
     df$Global_reactive_power, 
     xlab = 'datetime', 
     ylab = 'Global_reactive_power', 
     type = 'l')

dev.off()
