arr <- array(
  1:24,
  dim = c(2, 3, 4),
  dimnames = list(
    Rows = c("R1", "R2"),
    Columns = c("C1", "C2", "C3"),
    Tables = c("T1", "T2", "T3", "T4")
  )
)

print(arr)
print(arr[2, 3, 1])
print(arr["R1", "C2", "T2"])