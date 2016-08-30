# Graphs for financial budget scenarios
library(dplyr)
library(ggplot2)
library(tidyr)
## Create data-frames

# This could be imported from Excel, but is presented here instead
# for a complete example. Note how data is in tidy not wide format.
# This allows for easier manipulation in later steps.

costing <- read.table(header = TRUE, text = "
measure         year  base
implementation  2016  16.6
implementation  2017  11.2
implementation  2018  15.6
user_license    2016  5.6
user_license    2017  1.9
maintanence     2016  2.7
maintanence     2017  2.0
maintanence     2018  2.0
system_spend    2016  34.0
system_spend    2017  30.9
system_spend    2018  30.0
additional      2016  14.8
additional      2017  14.9
additional      2018  15.0
")

# Create sample scenarios. You can create these in Excel or a data file first, but I am 
# creating very simple ones through R here to show some options. 
costing <- costing %>%
  mutate(scen1 = base * 1.10) %>% # Cost up ten percent
  mutate(scen2 = ifelse(measure == "system_spend", 34, base)) %>% # system spend does not decrease yoy
  mutate(scen3 = ifelse(measure == "implementation", base * 1.25, base)) # implementation cost up 25%. 

head(costing)

# Summarize cost by year and scenario
cost_summary <- costing %>%
  group_by(year) %>%
  summarise_each(funs(sum), base, scen1, scen2, scen3) %>%
  gather("scenario", "cost", 2:5)

# Visualizations

# Base scenario
ggplot(costing, aes(x = factor(year), base, fill  = measure)) + 
  geom_bar(stat='identity') 

# Summary of costs
ggplot(cost_summary, aes(factor(year), cost)) + 
  geom_bar(stat="identity") + 
  facet_wrap(~ scenario)

