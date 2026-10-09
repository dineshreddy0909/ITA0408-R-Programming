numbers <- c(1, 2, 3, 4)
mat <- matrix(1:6, nrow = 2, byrow = TRUE)

square <- function(x) {
  return(x * x)
}

my_list <- list(
  Vector = numbers,
  Matrix = mat,
  Function = square
)

print(my_list)
print(my_list$Function(4))