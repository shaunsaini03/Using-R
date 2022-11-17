library(dslabs)
data(murders)
population_in_millions <- log10(murders$population / 10^6)
total_gun_murders <- murders$total
#plot(population_in_millions, total_gun_murders)


boxplot(population_in_millions, murders$region)