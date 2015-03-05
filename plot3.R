test<-read.table("household_power_consumption.txt",
                 skip=(24*60*46+398), nrows=(1440*2), 
                 na.strings="?",sep=";")

plot(test$V7, type="l", xaxt='n', xlab="", ylab="Enegy sub metering")
axis(1,c(0,dim(test)[1]/2,dim(test)[1]),labels=c('Thu','Fri','Sat'))

lines(test$V8, col="red")
lines(test$V9, col="blue")
legend("topright", pch="____", col=c("black","red","blue"),
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

##copy it to png

dev.copy(png, file="plot3.png")
dev.off()