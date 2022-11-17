#pipe makes the left side be the first argument of
#the right side

library(dslabs)
data(murders)

murders |> mutate(rate = total / population
                  * 100000, rank = rank(-rate))


data(murders)

my_states <- murders |>
  mutate(rate = total / population * 100000,
         rank = rank(-rate)) |>
  filter(region%in%c("West", "Northeast") & (rate < 1)) |>
  select(state, rate, rank)

