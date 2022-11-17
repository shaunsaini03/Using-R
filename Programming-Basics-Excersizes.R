library(dslabs)
data(murders)

new_names <- murders$abb[nchar(murders$state) > 14]

sum_n <- function(n) {
  sum(1:n)
}

sum_n(5000)

altman_plot <- function(x, y) {
  plot(x - y, x + y)
}

compute_s_n <- function(n){
  list <- 1:n
  sum(list^2)
}

compute_s_n(10)

s_n <- vector("numeric", 25)

for (i in 1:25) {
  s_n[i] = compute_s_n(i)
}

sapply(1:25, compute_s_n)

plot(1:25, sapply(1:25, compute_s_n))

n <- 25

identical(compute_s_n(25), (n*(n+1)*((2*n) + 1))
          / 6)
