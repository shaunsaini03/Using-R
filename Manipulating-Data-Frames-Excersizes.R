library(dplyr)
library(dslabs)
data(murders)

murders <- mutate(murders, rate = total / population
                  * 100000)

murders <- mutate(murders, rank = 
                    rank(-rate))

my_states <- filter(murders, region%in%c("West", "Northeast")
                    & rate < 1)

select(my_states, state, rate, rank)