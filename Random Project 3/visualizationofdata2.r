# Install and load the required packages
install.packages("ggplot2")
library(ggplot2)

# Convert the oil_data to a data frame
oil_df <- data.frame(Date = index(oil_data),
                     Open = coredata(oil_data$BZ.F.Open),
                     High = coredata(oil_data$BZ.F.High),
                     Low = coredata(oil_data$BZ.F.Low),
                     Close = coredata(oil_data$BZ.F.Close))

# Create the line plot
ggplot(oil_df, aes(x = Date)) +
  geom_line(aes(y = Open), color = "blue", linetype = "solid", size = 1) +
  geom_line(aes(y = High), color = "red", linetype = "dashed", size = 1) +
  geom_line(aes(y = Low), color = "green", linetype = "dotted", size = 1) +
  geom_line(aes(y = Close), color = "orange", linetype = "solid", size = 1) +
  labs(title = "Historical Oil Price",
       x = "Date", y = "Price") +
  scale_x_date(date_labels = "%Y-%m", date_breaks = "1 year") +
  theme_minimal()
