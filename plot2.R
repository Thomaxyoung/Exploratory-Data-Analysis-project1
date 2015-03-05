test<-read.table("household_power_consumption.txt",
                 skip=(24*60*46+398), nrows=(1440*2), 
                 na.strings="?",sep=";")

plot(test$V3, type="l", xaxt='n', xlab="", ylab="Gobal Active Power (Kilowatts)")
axis(1,c(0,dim(test)[1]/2,dim(test)[1]),labels=c('Thu','Fri','Sat'))
##copy it to png

dev.copy(png, file="plot2.png")
dev.off()