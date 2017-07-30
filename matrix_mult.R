A =c(20, 30, 40)
B =c(50, 60, 70)
C =c(80, 90, 100)
Matrix1 = rbind(A,B,C)
#print(Matrix1[1:3, 3])
colnames(Matrix1)=c("Physics", "chemistry", "Math")
rownames(Matrix1)= c("jack", "jophn", "kate")
#print(Matrix1)
#print(Matrix1["jack", "Math"])

result<- function(x){
  out =sum(x)
  return(out)
}
print(apply(Matrix1, 2, result))

Mat1 = rbind(
  A = c(1,2),
  B = c(3,4)
)

Mat2 = rbind(
  C = c(5,6),
  D = c(7,8)
)
print(Mat1)
print(Mat2)
print((Mat1*Mat2))