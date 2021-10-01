


#######  D P L Y R  ############

# Install dplyr, ggplot2

# dplyr usage and verbs there are 5 verbs

#1- arrange
#2- select
#3- filter
#4- group_by
#5- summarise

require(dplyr)

require(ggplot2)

head(diamonds)

View(diamonds)

str(diamonds)


# 1. arrange function

df <- arrange(diamonds, price)

head(df)

# arrange function

df <- arrange(diamonds, desc(price))

head(df)



# select function
df <- select(diamonds, carat, cut, price)

df <- select(diamonds, -c(carat, cut))

head(df)


# application of filter function

df <- filter(diamonds, price <= 1000)

head(df)

# application of filter function
df <- filter(diamonds, price > 3000 & price < 4000)

df <- filter(diamonds, cut == 'Premium' | price > 10000)


# group_by and summarise function

group_by_cut <- group_by(diamonds, cut)

df1 <- summarise(group_by_cut, mean(price))


gp_df <- group_by(diamonds, clarity)

df_clar <- summarise(gp_df, no_of_diamonds = n())

# summarise and summarize

summary(diamonds$clarity)



#### "in" utility

df3 <- filter(diamonds, clarity %in% c("VS2","VS1","VVS2","VVS1"))






################################################

head(select(diamonds,-color))

head(select(diamonds,carat:table))

head(filter(diamonds, price >= 1000))

head(filter(diamonds, price >= 1000 & 
              depth >= 60 | 
              carat >= 0.80))


head(filter(diamonds, price >= 1000 & 
              (depth >= 60 | carat >= 0.80)))


head(filter(diamonds, cut == c("Good","Ideal")))

head(select(diamonds, price, table))


arrange(diamonds, desc(price))[1:10, ]

################################################







# let's install nycflights13 package.

require(dplyr)
require(nycflights13)

flights <- flights

dim(flights)

names(flights)

by_day <- group_by(flights, day)

daily_delay <- summarise(by_day, dep=mean(dep_delay, na.rm = T),
                                 arr=mean(arr_delay, na.rm = T))


sfo <- filter(flights, dest=="SFO")

head(sfo)


# complex data manipulation scripts

df1 <- filter(flights, !is.na(dep_delay))

df2 <- group_by(df1, day, hour)

df3 <- summarise(df2, delay = mean(dep_delay), count = n())

df4 <- filter(df3, count > 750)



hourly_delay <- flights %>% filter(!is.na(dep_delay)) %>%
                group_by(day, hour) %>% 
                summarise(delay = mean(dep_delay), count = n()) %>% 
                filter(count > 750)



flights %>% 
  group_by(dest) %>% 
  summarise(arr_delay = mean(arr_delay, na.rm = T), num = n()) %>%
  arrange(desc(arr_delay))



