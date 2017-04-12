data<-read.table("./downloads/household_power_consumption.txt",na.strings = "?", stringsAsFactors = FALSE,header=TRUE, sep=";")
subdata<-data[data$Date %in% c("1/2/2007","2/2/2007"),]
png("./documents/plot1.png",width=480,height=480)
hist(subdata$Global_active_power,main="Global Active Power",xlab="Global Active Power (kilowatts)",ylab="Frequency",col="red")
dev.off()
