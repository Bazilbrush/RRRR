piratedata = read.csv("C:/Users/Administrator/Documents/piratebay/piratebay.csv")  
piratedata
colMax <- function(data) sapply(data, max, na.rm = TRUE)

colMax(piratedata)

max(piratedata$leechers)
subset(piratedata, leechers == max(leechers)) #most poular torrent

subset(piratedata, seeders == max(seeders)) #most seeders

pirate = piratedata[ !rowSums(piratedata[, colnames(piratedata)[(3:ncol(piratedata))]]==0)>=1,]

ratio = pirate[c("seeders")]/pirate[c("leechers")]
pirate[, "ratio"] <- ratio
print(pirate)
subset(pirate, ratio == max(ratio))  #returns highest ratio torrent
subset(piratedata, seeders == 0)
popularity = pirate[c("seeders")]+pirate[c("leechers")]
pirate[, "popularity"] <- popularity
print(pirate)
#plot popularity vs torrent size

plot1 = subset(pirate, select = c("popularity", "size"))
print(plot1)

library(ggplot2)

ggplot(plot1, aes(popularity, size)) + 
  geom_point()

#category and popularity

plot2 = subset(pirate, select = c("popularity", "category"))
ggplot(plot2, aes(popularity, category)) + 
  geom_point()

#5 categories

plot3 = subset(pirate, select = c("popularity", "size", "category"))
plot4 = subset(plot3, category > 200 & category < 205)
print(plot4)
ggplot(plot4, aes(popularity, size, color = category) ) + 
  geom_point()