library(openxlsx)

# Read data from Excel file
data <- read.xlsx("sample.xlsx")

library(ggplot2)

# Create a scatter plot
ggplot(data, aes(x = Age, y = Grade)) +
    geom_point() +
    labs(x = "Age", y = "Grade") +
    ggtitle("Sample Data Scatter Plot")

library(ggplot2)

# Create a scatter plot
ggplot(data, aes(x = Age, y = Grade)) +
    geom_point() +
    labs(x = "Age", y = "Grade") +
    ggtitle("Sample Data Scatter Plot")

# Save the plot as a PDF file
ggsave("ggplot.pdf", plot = scatter_plot, device = "pdf")