var1  =as.numeric(readline("lower limit"))
var2 =as.numeric(readline("upper limit"))

for (i in var1:var2){
  for (j in 0:10){
    result = i*j
    print(paste(i, "x", j, "=", result))
  }
 
  #2print(paste(var1, "x", i, "=", result))
  
}