# simple function

prt = function(){
  print('Hello World')
}

prt()

# user defined function
mysum = function(x, y){
  return (x + y)
}

mysum(2, 3)

mysum = function(x = 2, y){
  return (x + y)
}

mysum(y = 2, x = 6)

# multiple retun function
mix = function(x, y, z){
  a = x * y * z
  b = x + y + z
  result = list('sum' = b, 'mul' = a)
  return(result)
}
mix(1, 2, 3)

# inline function
mysum = function(x, y) x + y

mysum(2, 3)
