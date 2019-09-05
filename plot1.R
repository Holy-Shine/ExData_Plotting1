


# load dataset
source('./data_utils.R')
df <- load_data()

# open device
png(filename = './plot1.png', width = 480, height = 480, units='px')

# set locale to english
Sys.setlocale(category = 'LC_ALL', locale = 'english')

# plot and generate png file
hist(df$Global_active_power, 
     freq = TRUE,
     col='red', 
     xlab = 'Global Acitve Power (kilowatts)', 
     main='Global Active Power')

dev.off()