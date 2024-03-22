library(openxlsx)
library(ggplot2)

# Read data from Excel file
data <- read.xlsx("sample.xlsx")

# Convert Grade to factor
data$Grade <- as.factor(data$Grade)

# Create a line graph with multiple lines
line_plot <- ggplot(data, aes(x = Age, y = Grade, color = Gender)) +
  geom_line(linetype = "solid", size = 1.5) +
  labs(x = "Age", y = "Grade") +
  ggtitle("Sample Data Line Graph") +
  scale_x_continuous(limits = c(0, 100)) +
  scale_y_discrete()

# Save the plot as a PDF file
ggsave("line_plot.pdf", plot = line_plot, width = 7, height = 7, units = "in")

