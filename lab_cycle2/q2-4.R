data(mtcars)

mean_mpg <- mean(mtcars$mpg)
sd_mpg <- sd(mtcars$mpg)

hist_data <- hist(mtcars$mpg,breaks=10,col=rgb(0.1,0.2,0.7,seq(0.3,1,length=10)),
                  border = 'black',main='histogram of Miles Per Gallon (mpg)',
                  xlab="mpg",ylab = "Frequency")

abline(v=mean_mpg,col="red",lwd=2,lty=2)
text(mean_mpg+1,max(hist_data$counts)-1,
     paste("Mean:",round(mean_mpg,2),
           "\nSD",round(sd_mpg,2)),col="red")