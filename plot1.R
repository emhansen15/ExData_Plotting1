plot1<-function(){
  data<-read.table("household_power_consumption.txt", sep=";", header = TRUE, na.strings="?", stringsAsFactors=FALSE)
  install.packages("lubridate")
  library(lubridate)
  data$Date<-dmy(data$Date)
  cutData<-data[which(as.Date(data$Date)>='2007-02-01' & as.Date(data$Date)<='2007-02-02'),]
  png("plot1.png")
  hist(cutData$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", ylab="Frequency", main="Global Active Power")
  dev.off()
  
} 




