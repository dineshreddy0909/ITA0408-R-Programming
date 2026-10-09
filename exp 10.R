exam_data <- data.frame(
  name = c("Anu", "Bala", "Charan", "Divya", "Esha"),
  score = c(85, 62, 90, 75, 88),
  attempts = c(1, 3, 2, 2, 1),
  qualify = c(TRUE, FALSE, TRUE, FALSE, TRUE)
)

print(exam_data)
print(exam_data$name)
print(exam_data[1, ])

new_student <- data.frame(
  name = "Farhan",
  score = 70,
  attempts = 3,
  qualify = FALSE
)

exam_data <- rbind(exam_data, new_student)

exam_data$grade <- ifelse(
  exam_data$score >= 85, "A",
  ifelse(exam_data$score >= 70, "B", "C")
)

exam_data <- exam_data[
  order(exam_data$score, decreasing = TRUE),
]

print(exam_data)

write.csv(exam_data, "exam_data.csv", row.names = FALSE)