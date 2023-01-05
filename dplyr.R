#dplyr package is structured of data manipulation
install.packages("dplyr")
library(dplyr)
install.packages("nycflights13")
library(nycflights13)

#Dimension of Flight,See Flight as table in another Tab
#see First and Last Row, Check no of rows And columns,check Structure
#display name of Columns
flights
dim(flights)
View(flights)
nrow(flights)
ncol(flights)
str(flights)
head(flights)
tail(flights)
head(flights,7)
names(flights)

## ----- Filter out records based on some criteria - display records of 1st Jan
filter(flights,month==1,day==1)
filter(flights,month==12,day==13)

## Pipe/Chaining operator %>% (output of 1 as input to other function)
flights%>% filter(month==8,day==5)

## - arrange first by year then month then day in ascending order
arrange(flights,year,month,day)
arrange(flights,desc(arr_delay))

# Select columns by name
select(flights,year,month,day)

# Select all columns between year and day (inclusive)
select(flights,year:day)
flight
# Select all columns except those from year to day (inclusive)
select(flights,-(year:day))
flights
select(flights,-(year:day))
## Create/add new columns
newdf<-mutate(flights,
              gain=arr_delay-dep_delay,
              speed=distance/arr_time*60)
View(newdf)
########
sample_n(flights,8)
sample_frac(flights,0.01)

#####
flights$dest
unique(flights$dest)
length(unique(flights$dest))

######
destination<-group_by(flights,dest)
summarise(destination,
          planes=n_distinct(tailnum),
          flights=n())
flights[flights$dest=='ANC',c("tailnum","dest")]

dfdept<-data.frame(names=c("a","b","c","Raju","babu","Ramesh","suresh","Harsh","Vijay","Sopan"),
                   Dept=c("HR","sales","admin","trainer","HR","sales","admin","trainer","sales","HR"),
                   salary=c(15000,25000,25000,35000,40000,45000,45000,50000,80000,90000))
dfdept
depgrp<-group_by(dfdept,Dept)
summarise(depgrp,
        salary=n_distinct(salary),
        depgrp=n())
salgrp<-group_by(dfdept,salary)
summarise(salgrp,
          Dept=n_distinct(Dept),
          salgrp=n())

daily<-group_by(flights,year,month,day)
  (per_day<- summarise(daily,flights=n()))
  (per_month<- summarise(per_day,flights=sum()))
  (per_year<-summarise(per_month,flights=sum()))

#year Represent integer 1
select(flights,year)
select(flights,3)

filter(summarise(select(group_by(flights,year,month,day),
                        arr_delay,dep_delay),
                 arr=mean(arr_delay,na.rm=TRUE),
                 dep=mean(dep_delay,na.rm=TRUE),
                 arr>30|dep>30))
flights
flights %>%
  group_by(year,month,day) %>%
  select(arr_delay,dep_delay) %>%
  summarise(arr=mean(arr_delay,na.rm = T),
           dep=mean(dep_delay,na.rm = T)) %>%
       filter(arr>30 | dep>30)
View(flights)



#####################################################################

install.packages(superstore)


