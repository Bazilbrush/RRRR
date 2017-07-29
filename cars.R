test1 <- read.sas7bdat("C:/Users/Administrator/Documents/cars.sas7bdat")
str(test1)
####### asia rear drive cars------------------------------------
plot1 = subset(test1, select = c(Origin, DriveTrain))
print(plot1)

nrow(plot1[plot1$Origin == "Asia", ])

asia = subset(plot1, Origin == "Asia")
rear = subset(asia, DriveTrain == "Rear")
nrow(rear)
######## ------------------------------------------------------
####### averge hp of EU cars
eucars = subset(test1, Origin == "Europe")
hp = subset(eucars, select= c(Horsepower))
average = colMeans(hp)
print(average)

###--------------------------------------------------------------

## avg price of us cars
usacars = subset(test1, Origin == "USA")
price = subset(usacars, select = c("MSRP"))
avg = colMeans(price)
print(avg)

### best price/hp ratio###############


set1 = subset(test1, select = c(Origin, MSRP, Horsepower))
ratio = set1[c("MSRP")]/set1[c("Horsepower")]
set1[, "ratio"] <- ratio
region = subset(set1, ratio == min(ratio))

### bar graph for bmws---------------------------------------------

bmw = subset(test1, Make == "BMW")
models = subset(bmw, select = c(Model, Type))
ggplot(bmw, aes(Type)) + 
  geom_bar()

### price vs manufacturer -----------------------------------------

sedans = subset(test1, Type == "Sedan")
sedanClean = subset(sedans, select = c(Make, Model, MSRP))

ggplot(sedanClean, aes(Make, MSRP)) +
  geom_point()
