6a = function(ones){
  switch(ones, "one", "two", "three", "four", "five", "six", "seven", "eight", "nine" )
}
b = function(teens){
  switch(teens, "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen",  "sixteen", "seventeen", "eighteen", "nineteen")
}

c = function(tens){
  switch(tens, "twenty", "thirty", "forty", "fifty", "sixty", "seventy",  "eighty", "ninety")
  
}



amtp = as.numeric(readline("enter amount paid in pounds: "))

nado = 5000
pence = amtp*100

if(pence<nado){
  print("xuli tak malo?!")
}else{
  change = pence-nado
  print(change)
  bills50=0; bills20=0; bills10=0; bills5=0; coin2=0; coin1=0; pens50=0; pens20=0; pens10=0; pens5=0; pens2=0; pens1=0; 
  wrd50=""; wrd20=""; wrd10=""; wrd5=""; wrd2=""; wrd1=""; wrd050=""; wrd020=""; wrd010=""; wrd005=""; wrd002=""; wrd001="";
  if(change>=5000){
    bills50 = floor(change/5000) 
    if(bills50>9 & bills50<20){
      wrd50=b(bills50-9)
    }else if(bills50>19){
      print(bills50)
      f =c(floor(bills50%%100/10)-1)
      l =a(bills50%%10)
      wrd50=paste(f,l)
      }else{
      wrd50 =a(bills50)
    }
    
    change =change%%5000
  }
  if(change>=2000){
    bills20 = floor(change/2000)
    wrd20 =a(bills20)
    change = change%%2000
  }
  if(change>=1000){
    bills10 = floor(change/1000)
    wrd10 =a(bills10)
    change = change%%1000
  }
  if(change>=500){
    bills5 = floor(change/500)
    wrd5 =a(bills5)
    change = change%%500
  }
  if(change>=200){
    coin2 = floor(change/200)
    wrd2 =a(coin2)
    change = change%%200
  }
  if(change>=100){
    coin1 = floor(change/100)
    wrd1 =a(coin1)
    change = change%%100
  }
  if(change>=50){
    pens50 = floor(change/50)
    wrd050 =a(pens50)
    change = change%%50
  }
  if(change>=20){
    pens20 = floor(change/20)
    wrd020 =a(pens20)
    change = change%%20
  }
  if(change>=10){
    pens10 = floor(change/10)
    wrd010 =a(pens10)
    change = change%%10
  }
  if(change>=5){
    pens5 = floor(change/5)
    wrd005 =a(pens5)
    change = change%%5
  }
  if(change>=2){
    pens2 = floor(change/2)
    wrd002 =a(pens2)
    change = change%%2
  }
  if(change==1){
    pens1 = change
    wrd001 =a(pens1)
  }
  #print(paste(wrd50,wrd20,wrd10,  bills5, coin2, coin1, pens50, pens20, pens10, pens5, pens2, pens1))
  if(wrd50>0){
    print(paste("give", wrd50, "£50 notes"))
  }
  if(wrd20>0){
    print(paste("give", wrd20, "£20 notes"))
  }
  if(wrd10>0){
    print(paste("give", wrd10, "£10 notes"))
  }
  if(wrd5>0){
    print(paste("give", wrd5, "£5 notes"))
  }
  if(wrd2>0){
  print(paste("give", wrd2, "£2 coins"))
  }
  if(wrd1>0){
    print(paste("give", wrd1, "£1 coins"))
  }
  if(wrd050>0){
  print(paste("give", wrd050, "£.50 coins"))
  }
  if(wrd020>0){
  print(paste("give", wrd020, "£.20 coins"))
  }
  if(wrd010>0){
  print(paste("give", wrd010, "£.10 coins"))
  }
  if(wrd005>0){
  print(paste("give", wrd005, "£.05 coins"))
  }
  if(wrd002>0){
  print(paste("give", wrd002, "£.02 coins"))
  }
  if(wrd001>0){
  print(paste("give", wrd001, "£.01 coins"))
  }
}




