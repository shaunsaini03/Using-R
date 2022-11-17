library(tidyverse)
library(dslabs)
data("murders")

murder_rate <- (murders$total /
                  murders$population) * 100000

safe <- murder_rate < 1

west <- murders$region == "West"

ind <- safe & west

safe_and_west <- murders$state[ind]

ind <- which(murders$state == "California")

ind <- match(c("New York", "Florida", "Texas"), murders$state)
