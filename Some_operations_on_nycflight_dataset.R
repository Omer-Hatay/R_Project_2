
library(tidyverse)

nycflights13::flights

View(flights)
str(flights)

flights %>% 
  filter(year==2013, month == 4, day == 19) %>% 
  nrow()#Specific flight check, 19th april




flights %>% 
  filter(year==2013, month == 4, day == 19) %>%
  select(sched_dep_time) %>%
  mutate(sched_dep_time=sched_dep_time/100) %>% 
  max()


flights %>% 
  filter(year==2013, month == 4, day == 19,origin=="JFK") %>%
  select(dep_delay) %>%
  filter(dep_delay>0) %>%
  pull(dep_delay) %>% 
  mean()


#install.packages("lubridate")
library(lubridate)
day1<-dmy("20-09-2012") 
day2<-dmy("18-04-2021") 
dif1<-day2-day1+1

cggs<-dif1*2 

lastdate<-(day2+cggs )  
format(lastdate, "%d-%m-%Y")  




