# Create sample student data
student_data <- data.frame(
    name = c("John", "Emma", "David", "Sarah", "Michael"),
    age = c(20, 22, 21, 23, 19),
    grade = c("A", "B", "A-", "B+", "A")
)

# Load the ggplot2 package
library(ggplot2)

# Create a scatter plot
ggplot(data = student_data, aes(x = age, y = grade)) +
    geom_point() +
    labs(x = "Age", y = "Grade") +
    ggtitle("Student Data Scatter Plot")

ggsave("plot.png", plot = plot, device = "png")
