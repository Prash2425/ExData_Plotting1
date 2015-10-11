
source("~/Loadfile.R")

png(filename = "plot2.png",
    width = 480,height = 480,
    units = "px",bg="transparent")

plot(DateTime, Global_active_power,
     xlab = "",ylab = "Global Active Power (kilowatts)",
     main="",type = "l")

dev.off()