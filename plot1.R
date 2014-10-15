# read the data form the .txt file
data <- read.table("~/household_power_consumption.txt",header = T, sep = ";",as.is=T,na.strings = "?")

# convert and assing the formating for data field
data$Date <- as.Date(data$Date,"%d/%m/%Y")

# filter the date value based on the given dates
data <- data[data$Date == '2007-02-01' | data$Date == '2007-02-02',]

## Plot 1
hist(data$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

## Saving to file
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()
