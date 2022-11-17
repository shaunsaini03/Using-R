library(dslabs)
data(murders)

murder_rate <- (murders$total/
                  murders$population
                ) * 100000



low <- murder_rate < 1

states <- murders$state[low]

ind <- which(low & (murders$region == "Northeast"))

lowandNE <- murders$state[ind]

AvgMR <- mean(murder_rate)

belowAvg <- murder_rate < AvgMR

sum(belowAvg)

abbsInd <- match( c("AK", "MI",
                 "IA"),
               murders$abb)

murders$state[abbsInd]

abbs <- (c("MA", "ME", "MI", "MO", "MU"))

Ind <- which(!(abbs%in%murders$abb))

abbs[Ind]

  