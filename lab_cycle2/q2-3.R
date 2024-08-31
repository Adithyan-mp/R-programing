data(mtcars)
cyl_freq <- table(mtcars$cyl)
hist(x = mtcars$cyl,xlab = "cyl",col=rainbow(cyl_freq))
legend("topright",
       title = "Number of Cylinders",
       legend = unique(mtcars$cyl),fill = rainbow(cyl_freq))