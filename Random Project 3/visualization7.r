# Install and load the required packages
install.packages("tidyverse")
library(tidyverse)

# Create a data frame with the provided data
oil_df <- tibble(
  Date = as.Date(c(
    "2007-07-30", "2007-07-31", "2007-08-01", "2007-08-02", "2007-08-03",
    "2007-08-06", "2007-08-07", "2007-08-08", "2007-08-09", "2007-08-10",
    "2023-06-30", "2023-07-03", "2023-07-05", "2023-07-06", "2023-07-07",
    "2023-07-10", "2023-07-11", "2023-07-12", "2023-07-13", "2023-07-14"
  )),
  Open = c(
    75.85, 75.70, 77.00, 75.22, 75.39,
    74.54, 70.80, 71.44, 70.91, 69.91,
    74.25, 75.13, 74.94, 76.54, 76.48,
    78.49, 77.86, 79.28, 80.15, 81.61
  ),
  High = c(
    76.53, 77.17, 77.06, 76.21, 76.00,
    74.60, 72.01, 72.03, 71.08, 70.45,
    75.13, 76.58, 76.94, 77.08, 78.53,
    78.78, 79.50, 80.57, 81.75, 81.69
  ),
  Low = c(
    75.44, 75.67, 74.86, 74.27, 74.53,
    70.87, 70.56, 70.66, 69.27, 68.97,
    74.25, 74.58, 74.78, 75.01, 76.02,
    77.34, 77.64, 79.22, 79.87, 79.57
  ),
  Close = c(
    75.74, 77.05, 75.35, 75.76, 74.75,
    71.17, 71.80, 70.99, 70.21, 70.39,
    74.90, 74.65, 76.65, 76.52, 78.47,
    77.69, 79.40, 80.11, 81.36, 79.87
  )
)

# Create the line plot
ggplot(oil_df, aes(x = Date)) +
  geom_line(aes(y = Open), color = "blue", linetype = "solid", size = 0.8) +
  geom_line(aes(y = High), color = "red", linetype = "dashed", size = 0.8) +
  geom_line(aes(y = Low), color = "green", linetype = "dotted", size = 0.8) +
  geom_line(aes(y = Close), color = "orange", linetype = "solid", size = 0.8) +
  labs(title = "Historical Oil Price",
       x = "Date", y = "Price") +
  scale_x_date(date_labels = "%Y-%m", date_breaks = "1 year") +
  theme_minimal()
