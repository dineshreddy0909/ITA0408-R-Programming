m1 <- matrix(1:20, nrow = 5, ncol = 4, byrow = TRUE)
rownames(m1) <- paste0("R", 1:5)
colnames(m1) <- paste0("C", 1:4)
print(m1)

m2 <- matrix(1:9, nrow = 3, ncol = 3, byrow = FALSE)
rownames(m2) <- paste0("R", 1:3)
colnames(m2) <- paste0("C", 1:3)
print(m2)

m3 <- matrix(1:4, nrow = 2, ncol = 2, byrow = TRUE)
rownames(m3) <- paste0("R", 1:2)
colnames(m3) <- paste0("C", 1:2)
print(m3)