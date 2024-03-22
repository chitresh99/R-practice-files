library(readxl)
library(ggplot2)

# Read the data from the XLSX file
data <- read_excel("mangadata.xlsx")

# Create a bar chart of approximate sales
ggplot(data, aes(x = `Manga series`, y = `Approximate sales in million(s)`)) +
  geom_bar(stat = "identity", fill = "blue", width = 0.5) +
  labs(title = "Approximate Sales of Manga Series",
       x = "Manga Series",
       y = "Approximate Sales (in million(s))") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))


# Display the bar chart
bar_chart
