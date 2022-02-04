# Barplot
library(dplyr)
data <- read.table('Dataset/data.txt', header = T)
data <- select(data, state, population)
data <- head(data, 5)
barplot(data$population, names.arg = data$state, xlab = 'State', ylab = 'Population', main = 'State vs Population', col = 'blue' )
barplot(data$population, names.arg = data$state, horiz = T, xlab = 'Population', ylab = 'Stat', main = 'State vs Population', col = 'blue' )

# Stack Barplot
data <- read.csv('Dataset/apartments.csv', sep = ';')
data <- mutate(data, price = price/1000)
data1 <- data[c(1, 3, 4)]
data <- t(data1.matrix(data))   # matrix with transpose
data <- head(data, 10)
barplot(data, col = 2:3, main = 'Price vs Area', legend('topleft', c('price', 'area'), fill = c('green', 'red')))

# Histogram
data <- read.csv('Dataset/apartments.csv', sep = ';')
hist(data$area, col = 'gray', border = 'red', xlab = 'Area', main = 'Histogram of Area', breaks = 10)

# Scatter Plot
data(cars)
cars <- cars
head(cars, 10)
plot(cars$speed, cars$dist, xlab = 'Speed', ylab = 'Distance', main = 'Cars (Dist vs Speed)', col = 'red', pch = 10)

# line Plot
data(cars)
cars <- cars
head(cars, 10)
plot(cars$speed, cars$dist, xlab = 'Speed', ylab = 'Distance', main = 'Cars (Dist vs Speed)', col = 'red', pch = 10, type = 'l') # line

# Boxplot
data <- read.csv('Dataset/apartments.csv', sep = ';')
head(data, 10)
boxplot(data$area ~ data$rooms,
        xlab = 'room',
        ylab = 'area',
        main = 'room vs area',
        col = 'red',
        border = 'blue',
        notch = T)

# Multiple Plots in Layout
# Barplot
par(mfrow = c(2, 2))
data <- read.table('Dataset/data.txt', header = T)
data <- select(data, state, population)
data <- head(data, 5)
barplot(data$population, names.arg = data$state, xlab = 'State', ylab = 'Population', main = 'State vs Population', col = 'blue' )
# Histogram
data <- read.csv('Dataset/apartments.csv', sep = ';')
hist(data$area, col = 'gray', border = 'red', xlab = 'Area', main = 'Histogram of Area', breaks = 10)
# Scatter plot
data(cars)
cars <- cars
head(cars, 10)
plot(cars$speed, cars$dist, xlab = 'Speed', ylab = 'Distance', main = 'Cars (Dist vs Speed)', col = 'red', pch = 10)
# Boxplot
data <- read.csv('Dataset/apartments.csv', sep = ';')
head(data, 10)
boxplot(data$area ~ data$rooms,
        xlab = 'room',
        ylab = 'area',
        main = 'room vs area',
        col = 'red',
        border = 'blue',
        notch = T)

