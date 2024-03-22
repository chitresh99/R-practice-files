library(openxlsx)
library(ggplot2)

# Read data from Excel file
data <- read.xlsx("sample.xlsx")

# Create a scatter plot
scatter_plot <- ggplot(data, aes(x = Age, y = Grade)) +
  geom_point() +
  labs(x = "Age", y = "Grade") +
  ggtitle("Sample Data Scatter Plot")

# Save the plot as a PDF file
ggsave("scatter_plot.pdf", scatter_plot, width = 7, height = 7, units = "in")
