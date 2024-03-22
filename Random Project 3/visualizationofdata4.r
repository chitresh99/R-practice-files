# Install and load the required packages
#install.packages("tidyverse")
# Install and load the required packages
#install.packages("tidyverse")
library(tidyverse)

# Convert the oil_data to a tibble
oil_df <- as_tibble(index(oil_data)) %>%
  mutate(Open = coredata(oil_data$BZ.F.Open),
         High = coredata(oil_data$BZ.F.High),
         Low = coredata(oil_data$BZ.F.Low),
         Close = coredata(oil_data$BZ.F.Close))

# Reshape the data to long format
oil_df_long <- oil_df %>%
  pivot_longer(cols = starts_with("BZ.F."), names_to = "Variable", values_to = "Price")

# Create the line plot
ggplot(oil_df_long, aes(x = index, y = Price, color = Variable)) +
  geom_line() +
  labs(title = "Historical Oil Price",
       x = "Date", y = "Price", color = "Variable") +
  scale_x_date(date_labels = "%Y-%m", date_breaks = "1 year") +
  scale_color_manual(values = c("BZ.F.Open" = "blue", "BZ.F.High" = "red", "BZ.F.Low" = "green", "BZ.F.Close" = "orange")) +
  theme_minimal()
