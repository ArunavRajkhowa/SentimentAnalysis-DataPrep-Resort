setwd("D:\\Chrome downloads\\")
file = "Data Analyst - Test Data - US.csv"
df= read.csv(file,stringsAsFactors = F)

library(psych)
library(dplyr)
library(ggplot2)
library(lubridate)


describe(df)
df=as_tibble(df)



z=parse_date_time(df$date,"%y %m %d")
d1 = df %>% 
  mutate(month= format(z,'%m'),
         day = format(z,'%d'))



p=ggplot(d1,aes(x=month) )
  p +geom_bar(aes(fill=day))
  
p1 = ggplot(d1,aes(x=Location)) +geom_bar()
p1
