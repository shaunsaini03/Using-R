a <- 0

if(a!=0){
  print(1/a)
} else {
  print("No reciprocal for 0.")
}

library(dslabs)
data(murders)
murder_rate <- murders$total / murders$population

ind <- which.min(murder_rate)

if (murder_rate[ind] < 0.5) {
  print(murders$state[ind])
} else {
  print("No state has murder rate that low")
}

avg <- function(x) {
  s <- sum(x)
  n <- length(x)
  s/n
}

compute_s_n <- function(x) {
  list <- 1:x
  sum(list)
}

sapply(1:25, compute_s_n)


