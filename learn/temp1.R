#concatination
text2<- "awesome"
text1<- "R is" 
paste(text1,text2)

#multiple variable
var1<-var2<-var3<-"orange"
var1
var2
var3

# numeric
x <- 10.5
class(x)

# integer :without decimal to use it use 'L'
x <- 1000L
class(x)

# complex
x <- 9i + 3
class(x)

# character/string
x <- "R is exciting"
class(x)

# logical/boolean
x <- TRUE
class(x)

#type conversion
x<- 1L #integer
y<-2 #numeric

a<-as.numeric(x)
b<-as.integer(y)

class(a)
class(b)

#Math functions
max(5,10,15)
min(5,10,15)

#square root
sqrt(16)

#absolute
abs(-4.5)

#ceiling() and floor()
#The ceiling() function rounds a number upwards to its nearest integer,
#and the floor() function rounds a number downwards to its nearest integer,
ceiling(1.4)

floor(1.4)

#string
str <- "Lorem ipsum dolor sit amet,
consectetur adipiscing elit,
sed do eiusmod tempor incididunt
ut labore et dolore magna aliqua."

str #does'nt insert line break
cat(str) #insert line break

#length
str <- "Hello World"
nchar(str)

#Check a string
grepl("H",str) # function to check if a character or a sequence of characters are present in a string:

# \\	Backslash
# \n	New Line
# \r	Carriage Return
# \t	Tab
# \b	Backspace

#Operators


# Operator	Description	Example
# :	Creates a series of numbers in a sequence	x <- 1:10
# %in%	Find out if an element belongs to a vector	x %in% y
# %*%	Matrix Multiplication	x <- Matrix1 %*% Matrix2

# Operator	Name	Example
# +	Addition	x + y	
# -	Subtraction	x - y	
# *	Multiplication	x * y	
# /	Division	x / y	
# ^	Exponent	x ^ y	
# %%	Modulus (Remainder from division)	x %% y	
# %/%	Integer Division	x%/%y


#if else
a<- 33
b<-33

if(b>a){
  print("b is greater than a")
}else if(a==b){
  print("both are equal")
} # else should write at the end of if curly bracket

#Nested if
x <- 41

if (x > 10) {
  print("Above ten")
  if (x > 20) {
    print("and also above 20!")
  } else {
    print("but not above 20.")
  }
} else {
  print("below 10.")
}

#AND
a <- 200
b <- 33
c <- 500

if (a > b && c > a) {
  print("Both conditions are true")
}
#for dealing with vector and want to compare all element wise then use "&" symbol likewise for or also
#for short-circuit logical operations(compare first element) use "&&"

#While loop
i<-1
while(i<6){
  print(i)
  i<-i+1
}

#next statement :an skip an iteration without terminating the loop
i <- 0
while (i < 6) {
  i <- i + 1
  if (i == 3) {
    next
  }
  print(i)
}

#FOR Loop
for(x in 1:10){
  print(x)
}

fruits <- list("apple", "banana", "cherry")

for (x in fruits) {
  print(x)
}

dice <- c(1, 2, 3, 4, 5, 6)

for (x in dice) {
  print(x)
}

#break : to stop before full iteration
fruits <- list("apple", "banana", "cherry")

for (x in fruits) {
  if (x == "cherry") {
    break
  }
  print(x)
}

#Nested Loop
adj <- list("red", "big", "tasty")

fruits <- list("apple", "banana", "cherry")
for (x in adj) {
  for (y in fruits) {
    print(paste(x, y))
  }
}

#function
my_function <- function(){
  print("hello world")
}

my_function()

#Default Parameter Value : If we call the function without an argument, it uses the default value:
my_function <- function(country = "Norway") {
  paste("I am from", country)
}

my_function("Sweden")
my_function("India")
my_function() # will get the default value, which is Norway
my_function("USA")

#return
my_function<- function(x){
  return(2*x)
}

my_function(1)

#Nested Functions
#There are two ways to create a nested function:
  
#Call a function within another function.
#Write a function within a function.

#Call a function within another function:
  
Nested_function <- function(x, y) {
    a <- x + y
    return(a)
  }

Nested_function(Nested_function(2,2), Nested_function(3,3))

#Write a function within a function:

Outer_func <- function(x) {
  Inner_func <- function(y) {
    a <- x + y
    return(a)
  }
  return (Inner_func)
}
output <- Outer_func(3) # To call the Outer_func
output(5)

#vector:a list of items that are of the same type
fruit <- c("banana","apple","orange")
fruit
#To create a vector with numerical values in a sequence
numbers <- 1:10
numbers
#how many item in Vector
length(fruit)
#Access multiple item
fruit[c(1,3)]
# Access all items except for the first item
fruit[c(-1)]
#change an item
fruits <- c("banana", "apple", "orange", "mango", "lemon")

# Change "banana" to "pear"
fruits[1] <- "pear"

# Print fruits
fruits

#Sort
fruits <- c("banana", "apple", "orange", "mango", "lemon")
numbers <- c(13, 3, 5, 7, 20, 2)

sort(fruits)  # Sort a string
sort(numbers) # Sort numbers

#repeat vector:rep() function
repeat_each <- rep(c(1,2,3), each = 3)

repeat_each

#Repeat the sequence of the vector:
  
repeat_times <- rep(c(1,2,3), times = 3)

repeat_times

#Repeat the sequence of the vector:
  
repeat_times <- rep(c(1,2,3), times = 3)

repeat_times

#seq()
numbers <- seq(from = 0, to = 100, by = 20)


#List:A list in R can contain many different data types inside it. A list is a collection of data which is ordered and changeable
# List of strings
thislist <- list("apple", "banana", "cherry")

# Print the list
thislist

#Check if item is present in the list:
  
thislist <- list("apple", "banana", "cherry")

"apple" %in% thislist

#range of index
(thislist)[2:3]

#MATRICES
x<-matrix(c(1,2,3,4), nrow = 2,ncol = 2)
x
#c() function is used to concatenate items together.

thismatrix <- matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"), nrow = 3, ncol = 3)

thismatrix[c(1,2),]

thismatrix[, c(1,2)]

thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)

for (rows in 1:nrow(thismatrix)) {
  for (columns in 1:ncol(thismatrix)) {
    print(thismatrix[rows, columns])
  }
}