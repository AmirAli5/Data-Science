# Matrix

m <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3)   # By default create matrix by col
m

m <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3, byrow = TRUE)   # create matrix by row

m

# or another way to create matrix
m <- c(1, 2, 3, 4, 5, 6)

dim(m) <- c(2, 3)
m

# info about matrix
dim(m)
length(m)
ncol(m)
nrow(m)

# Matrix diag
m <- matrix(4, 3, 3)
m

m <- diag(1, 4, 4)
m

m <- diag(1:5)
m
diag(m)

# Matrix Naming rows and cols
m <- matrix(4, 3, 3)
rownames(m) <- c('I', 'II', 'III')
colnames(m) <- c('A', 'B', 'C')
m

# Matrix Indexing
x <- matrix(1:12, nrow = 3, ncol = 4, byrow = TRUE)
x[2, ]
x[2, 2]
x[2, 2] = -1
x[-2, -2]      # - is use to eliminate the col and row
x[, -4]
x[c(1, 3), ]   # access row 1 and 3
x[,c(1, 3)]    # access col 1, 3

# row and col bind
a <- matrix(1:12, nrow = 4, ncol = 3)
b <- matrix(13:15, nrow= 1, ncol = 3)
rbind(a, b)   # row bind

x1 <- matrix(1:12, nrow = 4, ncol = 3)
x2 <- matrix(13:16, nrow= 4, ncol = 1)
cbind(x1, x2)  # col bind

# Matrix operations
m1 <- matrix(1:12, nrow = 3, ncol = 4)
m2 <- matrix(13, 24, nrow = 3, ncol = 4)
m1 + m2
m1 - m2
m1 * m2
m1 %*% t(m2)

t(m2)      # transpose
solve(m1)  # identity matrix
solve(m2)

# Matrix specific function
m1 <- matrix(1:9, nrow = 3, ncol = 3)
m1
colSums(m1)
rowSums(m1)

rowMeans(m1)
colMeans(m2)

apply(m1, 1, sum)   # apply row
apply(m1, 2, sum)   # apply on col

