data<-read.table("./downloads/household_power_consumption.txt",na.strings = "?", stringsAsFactors = FALSE,header=TRUE, sep=";")
subdata<-data[data$Date %in% c("1/2/2007","2/2/2007"),]
subdatatime<-strptime(paste(subdata$Date,subdata$Time,sep=" "),"%d/%m/%Y %H:%M:%S")
png("./documents/plot2.png",width=480,height=480)
plot(subdatatime,subdata$Global_active_power,type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
