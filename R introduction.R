"Hello"
'Hello!'
#To Output in number
5
10
5,10,12# error 

#varibale
name<-"Ramesh"
name<-"Suresh"
age<-25
name
age
age+5
age<-25
age+5
num<-"25"
num+5

text<-"Excellment"
paste("ExcelR is", text)

#Assign same value to multiple varibale in one line
var<-var1<-var2<-var3<-"Mango"

#Legal Variable name
myvar<-"ramesh"
Na_me<-"Suresh"
Birthday<-"10 Jan"
MYVAR<-"Babu"
myvar1<-"Raju"
this.year<-2022

#Illigal variable name
2myvar<-"ramesh"
my-var<-"chetan"
my var<-"harsh"
TRUE<-'s'

#Data Types
#Numeric/Float-decimal Whole+ve-Ve

x<-10.5
class(x)

#integer whole+ve -ve
x<-1000L
class(x)

#string/character
x<-"R is Exciting"
class(x)

#Boolean/Logical
x<-"true"
x<-"T"
class(x)
x<-TRUE
class(x)
3>5
5>3
3==5
1!=5

#Arithmatic Operator
x<-25
y<-3

x+y
x-y
x*y
x/y#flot decimal
x^y
x%%y#modulus
x%/%y#integer division

#Assignment Operator
x<-50
50<-x

#Build in math Function
min(11,23,30,25)
max(11,23,30,25)
sqrt(30)
abs(-3.5)

#Data Structures Vectors And dataframes
#homogenious vectors
#vector of string
Fruit<-c("apple","banana","chilli","Wheat")
class(Fruit)
#vector of numeric
N1<-c(1,2,3,4,5)
N2<-c(T,F,TRUE,FALSE)
class(N1)
class(N2)

#heterogenious
mix<-c(5,1.5,"apple",TRUE,100L,F)
class(mix)

x<-c(2,0,0,4)
y<-c(1,9,9,9)
x+y
x*5
x+y*1.5
(x+y)*1.5

#sequance

1:100
40:45
seq(1,50,5)#start value,end Value,Increment Value
seq(1,50,by=5)
seq(1,50,by=3)

n1<-1.5:3.5
n1<-1.5:7.5
class(n1)

#repetation
rep(45,8)
rep("apple",8)
rep(30,9)

#Random Sampling
sample(1:50,8)
sample(1:20,100)#error default value for replace=false
sample(1:20,100,replace = TRUE)
sample(c("apple","hp","Acer"),500,replace = TRUE)

###################
#Indexing/Accesing Vector Element
x<-c(2,0,0,4)
x[1]
x[c(1)]
x[-1]
x[-3]
x
x[-4]
x[1]<-3
x
x[-1]<-5
x
x[3]<-10
x
x[4]<-7
x
x[c(1,3)]
x[1]
x[1,3]
x[c(1,4)]

y<-c(1,9,9,9)
y==9
y<9
y[y<9]<-7
y
y<7

#Relational Operater With Vector

marks<-c(50,60,70,80,90)
marks>50
marks<60
marks[marks>50]
marks==80
names<-c("snehal","pooja","vidya","ganesh")
"pooja"%in% names
"vidya"%in% names
"sandhya"%in% names

#Slicing
marks
marks[3:7]
marks[4]
marks[2:6]
marks
marks[3]<-97
marks
marks[-3]
marks[-3]<-100
marks[6]

Price<-c(2999,449,29,650,2800,192,9384,373,474,4745)
Price[2:7]

#Select Element from Vector with Condition
Price>1000
sort(Price)
sort(Price,decreasing = T)
help("sort")
Price
sort(Price,decreasing = T,na.last = NA)
sort(Price,decreasing = T)
Price
price<-c(2999,449,29,650,2800,192,9384,373,474,4745)

#Basic Function on Vector
length(price)
min(price)
max(price)
sum(price)
mean(price)
median(price)
mode(price)

#Data frame
#slicing Data Frame
a<-c(42,18,91,87,66)
b<-c("p","q","r","s","t")
data.frame(a,b)
Df<-data.frame(a,b)

Df1<-data.frame(
  traning=c("stamina","strenth","Weakness"),
  Pulse=c(100,200,300),
  Duration=c(60,30,45))
Df1
Df1[,1]#all row one Coloum
Df1[1,]
Df1[,]

Df1$traning

Df2<-data.frame(height=c(150,160),weight=c(50,70))

Food<-data.frame(name=c("pavbhaji","Idlisambar","Gulabjamun","Pulao","Chicken","chicken masala"),
                 type=c("veg","veg","veg","veg","nonveg","nonveg"),
                 taste=c("spicy","spicy","sweet","spicy","spicy","spicy"),
                 Price=c(150,100,125,200,225,250))
Food
#Row with food type:veg
Food[Food$type=="veg"]
Food[Food$type=="veg",]

# Food names and prices of all nonveg items
Food[Food$type=="nonveg",c(1,4)]
#or
Food[Food$type=="nonveg",c("name","Price")]

# all spicy food with price less than 300
Food[Food$taste=="spicy" & Food$Price<300,]

#mtcars and Orange are built in set.
Orange

dim(Orange)
nrow(Orange)
ncol(Orange)
str(Orange)
summary(Orange)
View(Orange)
Orange$Tree
table(Orange$Tree)

mtcars
mtcars$cyl
table(mtcars$cyl)
View(mtcars)

#USArrests Another Dataset
USArrests

head(USArrests)
tail(USArrests)
head(USArrests,8)
