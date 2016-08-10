# Interactive demo for Quick Start. 

# General Setup ---
# pkgs <- c('dplyr', 'ggplot2', 'stringr', 'lubridate', 'tidyr', 'Quandl')
# install.packages(pkgs)

library(dplyr)
library(ggplot2)
library(Quandl)
library(tidyr)

# Set api-key for getting data from Quandl
# See ?Quandl for more info on setting a key, register at quandl.com
source("Quick_Start/api_key.R")
Quandl.api_key(key)

# Get the CMHC dataset - Housing Starts by Dwelling Type Seasonally Adjusted
housing <- Quandl('CMHC/HSDAA')

# Take a look
head(housing)
str(housing)
summary(housing)

# Tidy Data
housing_tidy <- housing %>%
  gather("dwelling", "starts", 2:6)

head(housing_tidy)
summary(housing_tidy)

# Plot data
qplot(data=housing_tidy, starts)
qplot(data=housing_tidy, Date, starts)
qplot(data=housing_tidy, Date, starts, colour = dwelling)

# Remove total
housing_no_total <- housing_tidy %>%
  filter(dwelling != "Total")

summary(housing_no_total)

# Plot again
qplot(data=housing_no_total, Date, starts, colour = dwelling)


# Plot better
ggplot(data=housing_no_total, aes(x = Date, y = starts, colour = dwelling)) + 
  geom_line() +
  geom_smooth(method="gam") + 
  labs(y = "Housing Starts", 
       title = "Quarterly Housing Starts by Dwelling Type 1990 - 2016", 
       colour = "Dwelling Type")

# Get Annual Data from Source
housing_annual <- Quandl('CMHC/HSDAA', collapse = "annual") %>%
  gather("dwelling", "starts", 2:6) %>%
  filter(dwelling != "Total")

head(housing_annual)

ggplot(data=housing_annual, aes(x = Date, y = starts, colour = dwelling)) + 
  geom_line() +
  geom_smooth() + 
  labs(y = "Housing Starts", 
       title = "Housing Starts by Dwelling Type 1990 - 2016", 
       colour = "Dwelling Type")
