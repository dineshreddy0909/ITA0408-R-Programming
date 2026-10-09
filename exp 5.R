height <- c("Short", "Tall", "Medium", "Tall", "Short")
height_factor <- factor(height)
print(height_factor)
print(levels(height_factor))

data(women)

height_category <- cut(
  women$height,
  breaks = 3,
  labels = c("Short", "Medium", "Tall")
)

print(height_category)

set.seed(123)
letters_sample <- sample(LETTERS[1:5], 10, replace = TRUE)
letter_factor <- factor(letters_sample)

print(letter_factor)
print(levels(letter_factor))