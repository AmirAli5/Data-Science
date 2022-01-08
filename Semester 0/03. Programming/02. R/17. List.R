# create a list
x <- list(13, 'amir', 23.5, TRUE)
x
a <- c('a', 'b', 'c', 2, 3)
b <- c(13, 'amir', 23.5, TRUE)
lst <- list(a, b)
lst

# access the element from list
marks <- c(23, 45, 67)
names <- c('Amir', 'Ali', 'Cheema')
roll <- c(3, 6, 7)
ls <- list(marks, names, roll)
ls
ls[1]   # access marks
ls[2]   # names
ls[[1]][2]   # access 45 from marks
ls[[1]][3] <- 23  # 67 with 23
ls

# concatenate the list
rollno <- c(101, 102, 103)
names <- c("amir", 'ali', 'cheema')
pw <- list(rollno, names)
pw
ages <- list(c(12, 23, 45))

pw <- c(pw, ages) 
pw

