# Load the ggplot2 package
library(ggplot2)

# Create the student_data dataframe
student_data <- data.frame(
  age = c(20, 22, 21, 23, 19),
  grade = c("A", "B", "A-", "B+", "A")
)

# Create the plot
plot <- ggplot(data = student_data, aes(x = age, y = grade)) +
  geom_point() +
  labs(x = "Age", y = "Grade") +
  ggtitle("Student Data Scatter Plot")

# Save the plot as a PDF file
ggsave(filename = "plot.pdf", plot = plot, device = "pdf")
