data<-read.table("./downloads/household_power_consumption.txt",na.strings = "?", stringsAsFactors = FALSE,header=TRUE, sep=";")
subdata<-data[data$Date %in% c("1/2/2007","2/2/2007"),]
subdatatime<-strptime(paste(subdata$Date,subdata$Time,sep=" "),"%d/%m/%Y %H:%M:%S")
png("./documents/plot3.png",width=480,height=480)
plot(subdatatime,subdata$Sub_metering_1,type="l",col="Black",xlab="",ylab="Energy sub metering")
lines(subdatatime,subdata$Sub_metering_2,type="l",col="Red")
lines(subdatatime,subdata$Sub_metering_3,type="l",col="Blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,lwd=2,col=c("Black","Red","Blue"))
dev.off()
