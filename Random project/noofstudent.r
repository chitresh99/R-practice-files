# Data
data_science_students <- 62
civil_engineering_students <- 10

# Create a data frame
df <- data.frame(
  Field = c("Data Science", "Civil Engineering"),
  Quantity = c(data_science_students, civil_engineering_students)
)

# Bar graph
barplot(df$Quantity,
  names.arg = df$Field, col = c("blue", "#ff0000"),
  main = "Number of Students by Field of Study",
  xlab = "Field of Study", ylab = "Number of Students"
)

# Color legend
legend("topright",
  legend = c("Data Science", "Civil Engineering"),
  fill = c("blue", "#ff0000"), title = "Fields"
)

