data(airquality)

print(head(airquality))

monthly_avg <- aggregate(
  cbind(Ozone, Solar.R, Wind, Temp) ~ Month,
  data = airquality,
  FUN = mean,
  na.rm = TRUE
)

print(monthly_avg)

library(reshape2)

melted_data <- melt(
  airquality,
  id.vars = "Month",
  measure.vars = c("Ozone", "Solar.R", "Wind", "Temp")
)

print(head(melted_data))

cast_data <- dcast(
  melted_data,
  Month ~ variable,
  fun.aggregate = function(x) mean(x, na.rm = TRUE)
)

print(cast_data)