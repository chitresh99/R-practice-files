# Install and load required packages
#install.packages("ggplot2")
library(ggplot2)

# Read data from a CSV file
mydata <- tryCatch(
  read.csv("your_file_path.csv"),
  error = function(e) {
    stop("Error reading the CSV file. Please check the file path and format.")
  }
)

# Create a scatter plot of price vs. area
ggplot(mydata, aes(x = area, y = price)) +
  geom_point() +
  labs(x = "Area", y = "Price") +
  ggtitle("Price vs. Area Scatter Plot")
