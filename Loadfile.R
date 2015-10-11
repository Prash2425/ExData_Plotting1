##Before running the code make sure we have data file "household_power_consumption.txt" file in working directory.

filename <- "./household_power_consumption.txt"
data <- read.table(filename,
                   header = TRUE,
                   sep = ";",
                   colClasses = c("character", "character", rep("numeric",7)),
                   na = "?")

attach(data)
## In order to get data only for 2 days.
subset <- Date == "1/2/2007" | Date == "2/2/2007"
NewData <- data[subset, ]

attach(NewData)

x <- paste(Date, Time)
NewData$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")
rownames(NewData) <- 1:nrow(NewData)

attach(NewData)
