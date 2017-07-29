2var1  =as.numeric(readline("lower limit"))
var2 =as.numeric(readline("upper limit"))
direction = 0
if (var1> var2){
  for( i in seq(var1, var2, by =-1)){
    for (j in seq(0, 10, by =1)){
      result = i*j
      print(paste(i, "x", j, "=", result))
    }
    
    
    
  }
  
}else{
  for( i in seq(var1, var2, by =1)){
    for (j in seq(0, 10, by =1)){
      result = i*j
      print(paste(i, "x", j, "=", result))
    }
    
    
    
  }
  
}

