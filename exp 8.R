set.seed(123)

x <- rnorm(100)
rounded_values <- round(x)
frequency <- table(rounded_values)

frequency_df <- as.data.frame(frequency)
names(frequency_df) <- c("Value", "Frequency")

print(frequency_df)