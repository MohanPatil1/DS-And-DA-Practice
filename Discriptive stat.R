ages<-c(20,21,25,31,32,37,45,55,44,75)
salary<-c(21000,25000,28000,30000,32000,35000,40000,42000,41000,45000)
plot(salary)
plot(ages)
plot(ages,salary)
plot(salary,ages)

#########################################
install.packages("airqualityES")
library(airqualityES)
airquality<-datasets::airquality

##Top 10 Row And Last 10 Row
head(airquality,10)
tail(airquality,10)
names(airquality)#All Columns Name

View(airquality)#airquality Data set

# all rows and first two columns
airquality[,c(1,2)]
# excludes column no.6
airquality[,-6]
Df<-airquality[,-6]
Df
# summary statistics for column 1
summary(airquality[,1])
# display column values
airquality$Wind
# summary of wind column
summary(airquality$wind)

###########Summary of the data#########
summary(airquality)

##################### Visualization

plot(airquality)
plot(airquality$Ozone)
plot(airquality$Wind,airquality$Temp,type = "p")

# points and lines 
plot(airquality$Ozone,type = "p")
plot(airquality$Ozone,type = "l")
plot(airquality$Ozone,type = "b")

plot(airquality$Wind,
     xlab = "wind concentration",
     ylab = "Instances",
     main ="Wind airquality",
     col="green",
     type="l")

# plot of entire dataset - all columns
plot(airquality,col="red")

# x axis - Ozone, Y- solar.r
plot(airquality$Ozone,airquality$Solar.R)
# x - solar.r, y - ozone
plot(airquality$Solar.R,airquality$Ozone)

# Horizontal bar plot
plot(airquality$Ozone,
     main = "ozone concentration in air",
     ylab = "ozone Level",
     col="Red",
     horiz=T,
     axes = F)

airquality
plot(airquality$Ozone,
     main = "ozone concentration in air",
     ylab = "ozone Level",
     col="green",
     horiz=T,
     axes = F)
help("barplot")

#histogram
hist(airquality$Ozone)
hist(airquality$Ozone,
     main = "Ozone layer",
     xlab = "Ozone",
     col = "red",
     border = "blue")

help("hist")

#single boxplot 
plot(airquality$Solar.R,
     main = "Solar Radiation in air",
     col="pink",
     borders="red",
     horizontal=T)

boxplot.stats(airquality$Solar.R)$out

airquality$Ozone
view(airquality)
boxplot(airquality[,1:4],
        main="multiple",
        col="green",
        horizonplot=T)

#margin of the grid(mar)(bottom,left,top,right), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot (o,n,7,L,C,U)

help(par)
par(mfrow=c(3,3),mar=c(2,5,2,1),las=0)
plot(airquality$Ozone)
plot(airquality$Ozone,airquality$Solar.R)
plot(airquality$Ozone,type="l")

barplot(airquality$Ozone,
        main="ozone concentration in air",
        xlab="ozone level",
        col="green",horizonplot=T)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4],main="multiple box plot")

#considering NA Value
airquality
min(airquality)
min(airquality,na.rm = T)
max(airquality)
max(airquality,na.rm = T)
mean(airquality)
mean(airquality$Ozone,na.rm=T)
median(airquality$Ozone)
median(airquality$Ozone,na.rm = T)

# Google following functions as variance in R, etc
#var
#skewness
#kurtosis
#Density plot

var(airquality$Ozone)
var(airquality$Ozone,na.rm = T)
skewness(airquality$Ozone)
skewness(airquality$Ozone,na.rm = T)
kurtosis(airquality$Wind)
kurtosis(airquality$Ozone)
kurtosis(airquality$Ozone,na.rm = T)

# Installing Packages
# when function is not available you have to install some packages/libraries.
# eg. mobile has some in built apps 
# - others download scanner, whatsapp, photo editor from play store
# which library to download for skewness
#google - skewness and kurtosis in r
# go to rbloggers.com
# library(moments)
# or go to rdocumentation.r
# type skewness - you will get the name of package as 'moments'
# go to rstudio
# click on packages in 3rd window - bottom right corner - Click on install
# type moments in packages, click checkbox - install dependencies - click install
# After installation, in search - search for installed 'moments', click that checkbox

# Or try: install.packages("moments")

airquality
skewness(airquality$Ozone)
skewness(airquality$Ozone,na.rm = T)
kurtosis(airquality$Wind)
density(airquality$Ozone)
plot(density(airquality$Wind))
plot(density(airquality$Ozone,na.rm = T))

#Exercise
install.packages(quakes)

quakes
View(quakes)

#var
var(quakes)
help("var")
var(quakes$mag)

#skewness
skewness(quakes$depth)
mean(quakes$mag)

#kurtosis
kurtosis(quakes$long)

#homework

install.packages(iris)
iris
View(iris)

####Top 10 rows and last 10 rows
head(iris,10)
tail(iris,10)
names(iris)#names of coloumn

# To see entire dataset click on airquality data set name on top right window 
######Columns


# all rows and first two columns
iris[,c(1,2)]
# excludes column no.5
df<-iris[,-5]

# summary statistics for column 1
summary(iris[,1])
summary(iris$Sepal.Length)
# display column values
iris$Sepal.Width
# summary of wind column
summary(iris[,"Sepal.Length"])
summary(iris$Sepal.Length)

###########Summary of the data#########

summary(iris)
##################### Visualization
plot(iris$Sepal.Length)
plot(iris$Sepal.Length,type = "l")
plot(iris$Sepal.Length,iris$Sepal.Width,type = "p")
plot(iris)#Scatterplot

# points and lines 
plot(iris$Petal.Length,type = "l")
plot(iris$Petal.Width,type = "p")
plot(iris$Sepal.Length,type = "b")

plot(iris$Sepal.Length,
     xlab = "iris",
     ylab = "iris y",
     main = "iris data",
     col="red",
     type = "l")

plot(iris,col="green")#plot entire dataset all coloumn

# x axis - sepal.lenth, Y- sepal.width
plot(iris$Sepal.Length,iris$Sepal.Width)
plot(iris$Sepal.Width,iris$Sepal.Length)

#horizontal barplot
barplot(iris$Sepal.Length,
        xlab = "iris x",
        main = "iris data",
        col = "yellow",
        horiz = T,
        axes = F)

#Histogram

hist(iris$Sepal.Length)
hist(iris$Sepal.Width,
     xlab = "iris",
     main = "iris data",
     col = "yellow",
     border = "black")

#Single box plot
boxplot(iris$Sepal.Width,
        xlab="iris",
        main="iris data",
        col = "green",
        horizontal = T,
        border = "red")
boxplot.stats(iris$Sepal.Length)$out #outlier values

iris$Sepal.Length

# Multiple box plots
boxplot(iris[,1:4],
        main="iris data",
        col = "yellow",
        horizontal = T)

# Considering NA values
iris
min(iris$Sepal.Length)
max((iris$Sepal.Length))
mean(iris$Sepal.Length)
median(iris$Sepal.Length)

# Google following functions as variance in R, etc
#var
#skewness
#kurtosis
#Density plot

var(iris$Sepal.Length)
skewness(iris$Sepal.Length)
kurtosis(iris$Sepal.Length)
density(iris$Sepal.Length)


