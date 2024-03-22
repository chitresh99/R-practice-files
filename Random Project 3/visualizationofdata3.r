# Install and load the required packages
#install.packages("tidyverse")
library(tidyverse)

# Convert the oil_data to a tibble
oil_df <- as_tibble(index(oil_data)) %>%
  mutate(Open = coredata(oil_data$BZ.F.Open),
         High = coredata(oil_data$BZ.F.High),
         Low = coredata(oil_data$BZ.F.Low),
         Close = coredata(oil_data$BZ.F.Close))

# Create the line plot
ggplot(oil_df, aes(x = value, y = Open, color = "Open")) +
  geom_line() +
  geom_line(aes(y = High, color = "High")) +
  geom_line(aes(y = Low, color = "Low")) +
  geom_line(aes(y = Close, color = "Close")) +
  labs(title = "Historical Oil Price",
       x = "Date", y = "Price", color = "Variable") +
  scale_x_date(date_labels = "%Y-%m", date_breaks = "1 year") +
  scale_color_manual(values = c("Open" = "blue", "High" = "red", "Low" = "green", "Close" = "orange")) +
  theme_minimal()
