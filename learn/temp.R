# Create a vector.
apple <- c('red','green',"yellow")
print(apple)

# Get the class of the vector.
print(class(apple))

x <- list(1:3, TRUE, "Hello", list(1:2, 5))
x[[3]]

x[c(1,3)]

matrix(1:12, nrow=3, ncol=4)

matrix(1:12, nrow=3, byrow=TRUE)

diag(3)

diag(1:4)

1:5 %o% 1:5

x<-array(1:18 ,dim = c(2,3,3))
x
dim(x)
x[1,3,2]
x[1,3,]

x[1,1,]=c(-1,0,1)
x
x[,,1,drop=FALSE]
x


gender <- c(1,1,1,2,2,2)
gender <- factor(gender)
gender <- factor(gender,levels = c(1,2),labels = c("male","female"))
gender
table(gender)
