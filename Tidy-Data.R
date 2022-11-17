library(tidyverse)
library(dslabs)
data("murders")
murders <- mutate(murders, rate = total/population * 100000)

head(murders)

murders <- filter(murders, rate <= 0.71)

new_table <- select(murders, state, region, rate)

filter(new_table, rate <= 0.71)