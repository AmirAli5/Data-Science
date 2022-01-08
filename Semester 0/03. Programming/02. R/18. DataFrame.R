# Create a DataFrame
id <- c(22, 23, 34)
name <- c('Amir', 'Ali', 'Cheema')
marks <- c(23, 45, 67)
students <- data.frame(id, name, marks)
students

# DataFrame Indexing
students[1, ]         # access 1 row
students[, 3]         # aceess 3rd col
students[3]           # same as above
students[1:2, 2:3]    # access row(1,2) col(2,3)
students[c(1:2), c(2:3)]  # same as above
students[1, 2]        # amir
students[[2]][1]      # same as above
students$id   # access id col
students$name[1]     # access name col of 1st row
students[1, 2] <- 'Ansar'   # update amir name with ansar
students[-1]      # exclude 1st col here basically - use to exclude anything that we want
students

# DataFrame Subset function
students

reports <- subset(students, marks > 30)   # access those rows and col only (marks >30)
reports <- subset(students, marks > 30 & id > 30)
reports <- subset(students, marks > 30, select = id:name)   # here select we choose col
reports <- subset(students, id > 23, select = c(name, id))   # here we select name and id col
reports <- subset(students, id > 22, select = -name)         # - name mean we exclude name col
reports

# row and col bind in DataFrame
students
students <- rbind(students, data.frame(id = '40', name = 'Alex', marks = 99))     # 40, alex  99 row combine in exist data
students <- cbind(students, age = c(12, 45, 56))   # age col combined in exist data
students

# edit function
id1 <- c(1, 4, 8)
name <- c('Ali', 'Amir', 'Raza')
marks <- c(12, 45, 67)

df <- data.frame(id1, name, marks)
df
df_e <- edit(df)

# Missing Value in Data Frame
x <- c(2, 5, 8, NA)
y <- c('a', NA, 'c', 'd')
z <- c('1', '5', '8', '9')

df <- data.frame(x, y, z)
df

df_NA <- complete.cases(df)
df_NA
df[df_NA,]         # remove missing values


# Importing Data Frame
# Text file
mydata <- read.table('Dataset/data.txt')   # import txt file
mydata <- read.table('Dataset/data.txt', header = TRUE, skipr) # header
mydata <- read.table('Dataset/data.txt', nrows = 5)     # take only 5 rows
mydata <- read.table('Dataset/data.txt', header = TRUE, skip = 3)   # skip first three row
mydata <- read.table('Dataset/datadollar.txt', header = T,  sep = '$')   # sep by $

# csv file
df_csv <- read.csv('Dataset/data_tumor.csv', sep = ';')

# rds data
df_rds <- readRDS('Dataset/rs.rds')

#import DataFrame from Internet
df_int <- read.table('http://softlect.in/datasets/sample.csv', sep = ',', header = TRUE)
df_int

# import DataFrame from clipboard
mdata <- read.table('clipboard', header = TRUE)
mdata

# Export data to csv
id <- c(22, 23, 34)
name <- c('Amir', 'Ali', 'Cheema')
marks <- c(23, 45, 67)
students <- data.frame(id, name, marks)
students
write.csv(students, file = 'Dataset/students.csv')
