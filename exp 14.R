library(reshape2)

data(ChickWeight)

melted_chick <- melt(
  ChickWeight,
  id.vars = c("Chick", "Diet", "Time"),
  measure.vars = "weight"
)

print(head(melted_chick))

cast_chick <- dcast(
  melted_chick,
  Diet ~ Time,
  value.var = "value",
  fun.aggregate = mean
)

print(cast_chick)