plot3<-function(){
  data<-read.table("household_power_consumption.txt", sep=";", header = TRUE, na.strings="?", stringsAsFactors=FALSE)
  library(lubridate)
  data$Date<-dmy(data$Date)
  cutData<-data[which(as.Date(data$Date)>='2007-02-01' & as.Date(data$Date)<='2007-02-02'),]
  cutData$NewDate<-as.POSIXct(paste(cutData$Date, cutData$Time), format="%Y-%m-%d %H:%M:%S")
  
  
  
  
  png("plot3.png")
  
  plot(cutData$NewDate, cutData$Sub_metering_1, type = "l", ylab = "Energy sub metering",xlab="")
  lines(cutData$NewDate, cutData$Sub_metering_2, type = "l", col = "red")
  lines(cutData$NewDate, cutData$Sub_metering_3, type = "l", col = "blue")
  legend("topright", col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), pch="__") 
  dev.off()
  
  
  
} 


