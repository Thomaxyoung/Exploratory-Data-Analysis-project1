## Please place the data in your working directory
## then read the data we need,
## which are  dates 2007-02-01 and 2007-02-02

test<-read.table("household_power_consumption.txt",
                 skip=(24*60*46+398), nrows=(1440*2), 
                 na.strings="?",sep=";")

hist(test$V3, col="red",main="Global Active Power",
     xlab="Gobal Active Power (Kilowatts)")

##copy it to png

dev.copy(png, file="plot1.png")
dev.off()
