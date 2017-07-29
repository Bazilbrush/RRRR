marks = readline("subject 1 marks") 
marks1 = readline("subject 2 marks")
marks2 = readline("subject 3 marks")
counter = 0
if (as.numeric(marks) >= 70) {
  counter =counter +1
 #print(counter) 
}
if (as.numeric(marks1) >= 70) {
  counter =counter +1
  #print(counter) 
}
if (as.numeric(marks2) >= 70) {
  counter =counter +1
  #print(counter) 
}
if (counter == 3){
  print("carry on")
}
if (counter == 2){
  print("repeat the course")
} 
if (counter == 1){
  print("repeat the year")
}
if (counter == 0){
  print("go home")
}