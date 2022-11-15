library(tidyverse)
library(dslabs)
data("murders")

##Vector Arithmetic Lesson

temp <- c(35, 88, 42, 84, 81, 30)
city <- c("Beijing", "Lagos", "Paris",
         "Rio de Janeiro", "San Juan", "Toronto")


city_temps <- data.frame(name = city, temperature = temp)
city_temps_in_celcius <- data.frame(name = city,
                                    temperature = (temp - 32) * (5/9))
nums <- 1:100
nums <- 1 / (nums * nums)
sum(nums)

murder_rate <- (murders$total /
                  murders$population) * 100000
ind <- order(murder_rate)

murders$state[ind]

murders$state[9]
