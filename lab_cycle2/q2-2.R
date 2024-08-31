data(mtcars)

plot(x=mtcars$mpg,
     y=mtcars$disp,
     col = mtcars$cyl,
     xlab = "mpg",
     ylab = "disp",
     main = "mtcars visualization")

lines(lowess(mtcars$mpg, mtcars$disp), col = "black")

legend("topleft",legend = unique(mtcars$cyl),fill = mtcars$cyl,title = "relation of cyl")


