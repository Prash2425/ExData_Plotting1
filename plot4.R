
source("~/Loadfile.R")

##making plot in .png file.
png(filename = "plot4.png",
    width = 480,height = 480,
    units = "px",bg="transparent")

##fixing parameter to form layout for plot  
par(mfrow=c(2,2))

##plot in top left
plot(DateTime, Global_active_power,
     xlab = "",ylab = "Global Active Power",
     main="",type = "l")

##plot in top right
plot(DateTime,Voltage, type = "l",
     xlab = "datetime",ylab = "Voltage")

##plot in bottom left
plot(DateTime,Sub_metering_1,type = "l",
     col="black",xlab = "",ylab = "Energy sub metering",
     main = "")

lines(DateTime,Sub_metering_2,col="red")

lines(DateTime,Sub_metering_3,col="blue")

##remove boder of legend by using bty="n"
legend("topright",bty = "n",lty= 1,
       lwd = 1,col=c("black","red","blue"),
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

##plot in bottom right
plot(DateTime,Global_reactive_power,type = "l",col="black",
     xlab = "datetime",ylab = "Global_reactive_power")

dev.off()
