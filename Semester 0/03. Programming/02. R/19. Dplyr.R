library(dplyr)
data <- read.csv('Dataset/data_tumor.csv', sep = ';')
data
dim(data)    # return the dimension of data
str(data)    # return the type of each col type
names(data)  # return the col name of data

# dplyr select function
mydata <- select(data, age:tumor)    # take age to tumors col
mydata <- select(data,age,tumor,VEGF)   # take only manual three col
mydata <- select(data, -age)   # all the col except age
mydata <- select(data, -c(tumor.size:failures))   # all col except tumor.size to failure col
mydata <- select(data, -c(age,tumor,VEGF))   # all col except these three col
mydata

# dplyr filter function
mydata <- filter(data, age >30)  # apply condition that age > 30
mydata <- filter(data, age > 30 & tumor.size > 1)
mydata

# dplyr arrange function
mydata <- arrange(data, tumor.size)   # in arange of given col in asending order by default
mydata <- arrange(data, desc(tumor.size))   # arrange in descending order
mydata <- arrange(data, tumor.size, age)
mydata

# Head & tail
head(data, 5)   # show first five data row
tail(data, 5)   # show last five  data row

# change the name of col
mydata <- rename(data, tsize = tumor.size, lnode = lymph.nodes)  # change 2 col name here tumor size replace tsize same as second
names(mydata)

# dplyr mutate fn()
mydata <- mutate(data, newcol = age/VEGF)  # by use this fn we create newcol which age divide by VEFG
mydata

# dplyr transmute
mydata <- transmute(data, newcol = age/VEGF)   # he show only those who transform rest of drop
names(mydata)
mydata <- transmute(data, newcol = age/VEGF, age = age)
names(mydata)

# dplyr group_by function
mydata <- group_by(data, tumor.size)   # make a group of given col
mydata
summarise(mydata, sum(tumor.size))     # apply operation after group by 

# dplyr pipe operator
arrange(data, age) %>% select(age, tumor.size) %>% head(4)# mul opr in single using pipe operation(data pass only 1st opr rest opr no need)
