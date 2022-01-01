# create a vector

x <- c(1, 2, 3, 4, 5, 6 )
x
y <- c('a', 'b', 'c', 'd', 'e', 'f')
y


# access
x[4]

# update
y[2] <- 'a'
y

# iterate through loop
for (a in y){
  print(a)
}

# Matching Operators

x<- c(45, 67, 23, 45, 67, 23, 89)
75 %in% x
45 %in% x

y <- 23
y %in% x

y <- c(23, 45, 67, 23, 21)
y %in% x

# arithemtic operation in Vector
x <- c(2, 4, 5 ,7)
x + 2
x * 10
y <- c(10, 20, 30, 40)

x * y

z <- c(1, 2, 3)

y * z   # round multiply

# Vector Method
x <- c(23, 45, 21, 67, 22)

sqrt(x)
sum(x)
prod(x)
length(x)
sort(x)
sort(x, decreasing = TRUE)  # descending order sort
rev(x)   # reverse

y <- c(2, 4, 6, 8, 5)   
x %*% y                       #cross product
crossprod(x, y)    # or

x %o% y  # outer product
tcrossprod(x, y)   # or


# Vector Coercion

x <- c(2, 'A', TRUE, 3.6)
y <- c(3, TRUE)   # treat as True = 1
z <- c("Amir", TRUE)   # treat as TRUE as 
x <- c(3, 0, 2, 7, 8)
as.logical(x) 
as.character(x)
x <- c('A', 'B', 'C')         # warning becoz of char to num
as.numeric(x)


# Logical Vector
x <- c(32, 56, 21, 26)

x > 25

y <- c(23, 45, 22, 45)

x > y

which(x > y)        # return index of x >y value
x[which(x > y)]     # rerun value of x > y










