plot2<-function(){
  data<-read.table("household_power_consumption.txt", sep=";", header = TRUE, na.strings="?", stringsAsFactors=FALSE)
  library(lubridate)
  data$Date<-dmy(data$Date)
  cutData<-data[which(as.Date(data$Date)>='2007-02-01' & as.Date(data$Date)<='2007-02-02'),]
  cutData$NewDate<-as.POSIXct(paste(cutData$Date, cutData$Time), format="%Y-%m-%d %H:%M:%S")
  
  
  
  
  png("plot2.png")
  
  plot(cutData$NewDate,cutData$Global_active_power, type="l", xlab = "", ylab = "Global Active Power (kilowatts)")
  
  dev.off()
  
} 



