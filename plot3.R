
source('~/Loadfile.R')

png(filename = "plot3.png", 
    width = 480,height = 480, 
    units = "px", bg="transparent")

plot(DateTime,Sub_metering_1,type = "l",col="black",
     xlab = "",ylab = "Energy sub metering",main = "")
     
lines(DateTime,Sub_metering_2,col="red")
     
lines(DateTime,Sub_metering_3,col="blue")
     
legend("topright",lty = 1,
       lwd = 1,col = c("black","red","blue"),
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

dev.off()
