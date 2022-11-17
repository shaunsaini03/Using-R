#Plots

x <- murders$population / 10^6
y <- murders$total

plot(x, y)

#instead use with
with(murders, plot(population, total))



#Histograms

x <- with(murders, total / population * 100000)
hist(x)
murders$state[which.max(x)]



#Box Plots

murders$rate <- with(murders,
                     total / population
                     * 100000)

boxplot(rate~region, data = murders)



#image
x <- matrix(1:120, 12, 10)
image(x)
