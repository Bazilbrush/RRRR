number = 4000#as.numeric(readline("enter number between 1-9999: "))
print(number)
outones = number %% 10
outtens = number %% 100
outhund = floor((number %% 1000)/100)
outthou = floor(number/1000)



#cat(thousands)
#ones =3
a = function(ones){
  switch(ones, 
       "1" = "one",
       "2" = "two",
       "3" = "three",
       "4" = "four",
       "5" = "five",
       "6" = "six",
       "7" = "seven",
       "8" = "eight",
       "9" = "nine" )
}
b = function(teens){
   switch(teens, 
            "10" = "ten",
            "11" = "eleven",
            "12"= "twelve",
            "13" = "thirteen",
            "14" = "fourteen",
            "15" = "fifteen", 
            "16" = "sixteen",
            "17" = "seventeen",
            "18" = "eighteen",
            "19" = "nineteen")
}

c = function(tens){
  switch(tens, 
           "20" = "twenty",
           "30" = "thirty",
           "40" = "forty",
           "50" = "fifty",
           "60" = "sixty",
           "70" = "seventy", 
           "80" = "eighty",
           "90" = "ninety")

}

if (outthou > 0){
  Ones= a(outthou)
  #print("sent ones")
  thousands = paste(Ones, "thousand", sep = " ")
  cat(thousands)
}

if (outhund > 0) {
  Hund = a(outhund)
  hundreds = paste(Hund, "hundred", sep=" ")
  cat(hundreds)
}
if (outtens > 9 & outtens< 20){
  Teens = b(outtens-9)
  #print(outtens)
  cat(Teens)
}else{
  Tens = c(outtens/10-1)
  cat(Tens)
  if(outones>0){
  Ones1 = a(outones)}
  cat(Ones1)
}

#print(outones)
#print(outtens)
#print(outhund)
#print(outthou)
#cat(thousands)
