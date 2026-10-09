data(iris)

print(dim(iris))
print(summary(iris))

print(sapply(iris[, 1:4], sd))
print(quantile(iris$Sepal.Length))

species_mean <- aggregate(
  . ~ Species,
  data = iris,
  FUN = mean
)

print(species_mean)

pivot_table <- with(
  iris,
  tapply(Sepal.Length, Species, mean)
)

print(pivot_table)

iris$Length_Category <- cut(
  iris$Sepal.Length,
  breaks = c(-Inf, 5, 6, Inf),
  labels = c("Short", "Medium", "Long")
)

print(table(iris$Length_Category))
print(table(iris$Species, iris$Length_Category))