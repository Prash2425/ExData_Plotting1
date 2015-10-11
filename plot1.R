
source("~/Loadfile.R")

png(filename = "plot1.png",
    width = 480,height = 480,
    units = "px", bg="transparent")


hist(Global_active_power,col="red",
     xlab = "Global Active Power (kilowatts)",
     main = "Global Active Power")

##switching off the png graphic device
dev.off()  