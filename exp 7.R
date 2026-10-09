num <- 12
factors <- c()

for (i in 1:num) {
  if (num %% i == 0) {
    factors <- c(factors, i)
  }
}

print(factors)

set.seed(123)
random_numbers <- sample(-50:50, 10, replace = TRUE)
print(random_numbers)

for (i in 1:100) {
  if (i %% 15 == 0) {
    print("FizzBuzz")
  } else if (i %% 3 == 0) {
    print("Fizz")
  } else if (i %% 5 == 0) {
    print("Buzz")
  } else {
    print(i)
  }
}