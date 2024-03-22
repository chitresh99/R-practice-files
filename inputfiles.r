library(openxlsx)

# Create a sample data frame
data <- data.frame(
    Name = c("John", "Emily", "Michael", "Sophia"),
    Age = c(25, 28, 30, 26),
    Gender = c("Male", "Female", "Male", "Female"),
    Grade = c("A", "B", "C", "A")
)

# Write data to an Excel file
write.xlsx(data, "sample.xlsx")
