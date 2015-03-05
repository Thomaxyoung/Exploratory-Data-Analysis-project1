test<-read.table("household_power_consumption.txt",
                 skip=(24*60*46+398), nrows=(1440*2), 
                 na.strings="?",sep=";")
#set the frame
par(mfrow=c(2,2))

#plot up left 
plot(test$V3, type="l", xaxt='n', xlab="", ylab="Gobal Active Power")
axis(1,c(0,dim(test)[1]/2,dim(test)[1]),labels=c('Thu','Fri','Sat'))

#plot up right
plot(test$V5, type="l", xaxt='n', xlab="", ylab="Vottage")
axis(1,c(0,dim(test)[1]/2,dim(test)[1]),labels=c('Thu','Fri','Sat'))

#plot down left
plot(test$V7, type="l", xaxt='n', xlab="", ylab="Enegy sub metering")
axis(1,c(0,dim(test)[1]/2,dim(test)[1]),labels=c('Thu','Fri','Sat'))

lines(test$V8, col="red")
lines(test$V9, col="blue")
legend("topright", pch="____", col=c("black","red","blue"),
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

#plot down right
plot(test$V4, type="l", xaxt='n', xlab="", ylab="Gobal_reactive_power")
axis(1,c(0,dim(test)[1]/2,dim(test)[1]),labels=c('Thu','Fri','Sat'))

##copy it to png

dev.copy(png, file="plot4.png")
dev.off()