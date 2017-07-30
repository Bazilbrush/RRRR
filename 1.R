i = c(5, 0, 0)
j =  c(0, 5, 0)
inorm = c(i[1]/sqrt((i[1]^2)+(i[2]^2)+(i[3]^2)),i[2]/sqrt((i[1]^2)+(i[2]^2)+(i[3]^2)), i[3]/sqrt((i[1]^2)+(i[2]^2)+(i[3]^2)))
jnorm = c(j[1]/sqrt((j[1]^2)+(j[2]^2)+(j[3]^2)),j[2]/sqrt((j[1]^2)+(j[2]^2)+(j[3]^2)), j[3]/sqrt((j[1]^2)+(j[2]^2)+(j[3]^2)))
cross = (inorm*jnorm)*sin(90*pi/180)*1
#print(cross)
#print(inorm)
#print(jnorm)
#print(cross)

a = sqrt((i[1]^2)+(i[2]^2)+(i[3]^2))
b = sqrt((j[1]^2)+(j[2]^2)+(j[3]^2))
g= c(
(i[2]*j[3]-i[3]*j[2]),
(i[3]*j[1]-i[1]*j[3]),
(i[1]*j[2]-i[2]*j[1])
)
print(g)
#print((a*b)*sin(90*pi/180)*1)


#persp(g[1], g[2], g[3])

arrows3D(0, 0, 0, x1 =0, y1=5, z1 =0,  xlim = 20, ylim = 20, zlim =20, add =TRUE, ticktype = "detailed", nticks = 10)
arrows3D(0, 0, 0, x1 =g[1], y1=g[2], z1 =g[3], add=TRUE, xlim = 20, ylim = 20, zlim =20, ticktype = "detailed", nticks = 10)

# Create a grid of x, y, and z values



#segments3D(X0, Y0, Z0, X0, Y0, rep(0, length(X0)), lwd = 2, 
          # add = TRUE, col = "green")
