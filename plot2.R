

# load dataset
source('./data_utils.R')
df <- load_data()

# open device
png(filename = './plot2.png', width = 480, height = 480, units='px')

# set locale to english
Sys.setlocale(category = 'LC_ALL', locale = 'english')

# plot and generate png file
plot(df$DateTime, 
     df$Global_active_power, 
     xlab='', 
     ylab='Global Acitve Power (kilowatts)', 
     type='l')

dev.off()