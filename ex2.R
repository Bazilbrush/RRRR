var1  =as.numeric(readline("multiplier"))
var2 =as.numeric(readline("upper limit"))

for (i in 0:var2){
  result = var1*i
  print(paste(var1, "x", i, "=", result))
  
  }