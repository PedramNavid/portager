# Demo code for in-class lessons

# Visualzing data ----
# install.packages('nycflights13')
library(dplyr)
library(ggplot2)
library(nycflights13)

flights
summary(flights)
?flights

## One continious variable
# Ask class to pick a continious variable

qplot(dep_delay, data = flights)

## Transformation of continous  variables
qplot(log(dep_delay), data = flights)
qplot(sched_dep_time - dep_time, data = flights)

## One discrete variable
qplot(origin, data = flights)
qplot(carrier, fill = origin, data = flights)

## Two continous variables
qplot(dep_delay, arr_delay, data = flights)
qplot(dep_delay, arr_delay, colour = origin, data = flights)

## Discrete X, Continuous Y
qplot(carrier, dep_delay, data = flights)
qplot(carrier, dep_delay, data = flights, geom = "boxplot")
qplot(carrier, hour, data = flights, geom = "boxplot")

## Discerte X, Discrete Y
qplot(carrier, origin, data = flights)
qplot(carrier, origin, data = flights, geom = "count")

## Continious X, Discrete Y (not so useful)
qplot(arr_time, carrier, data = flights)

# ggplot

# Simple 
g <- ggplot(flights, aes(carrier, dep_delay)) + 
  geom_boxplot()
g

# Add titles
g + labs(x = "Carrier", y = "Departure Delay", 
  title = "Boxplot of Departure Delay by Carrier")

g + labs(x = "Carrier", y = "Departure Delay", 
  title = "Boxplot of Departure Delay by Carrier") +
  scale_y_continuous(limits = c(0, 500))

g + labs(x = "Carrier", y = "Departure Delay", 
  title = "Boxplot of Departure Delay by Carrier") +
  scale_y_continuous(limits = c(0, 100)) + 
  facet_wrap(~ origin, ncol = 1)

# Another example 
diamonds

ggplot(diamonds, aes(price / 1000, carat, colour = cut)) +
  geom_point() + 
  labs(x = "Price $M", y = "Carat", colour = "Diamond Cut", 
    title = "Diamond Price by Carat and Cut") +
  facet_wrap(~ clarity)
  
ggplot(diamonds, aes(price / 1000, carat, colour = color)) +
  geom_point(alpha = 0.3) +
  labs(x = "Price $M", y = "Carat", colour = "Diamond Cut", 
    title = "Diamond Price by Carat and Cut") +
  facet_grid(cut ~ clarity)

# Manipulating Data  ----



  