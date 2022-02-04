# for loop

for (i in 1:3) {
  print(i)
}

x <- 1:10
for (i in x){
  print(i)
}

x <- letters
for (i in x) {
  print(i)
}

y <- x[1:5]
for (i in y) {
  print(i)
}

# while loop
x <- 1
while(x <= 5){
  print(x)
  x = x + 1
}


# Repeat loop
i <- 1

repeat {
  if (i > 5)
    break
  
  print(i)
  i = i + 1
}

# next statement
for(i in 1:10) {
  if(i%%2 == 0)
    next
  print(i)
}
