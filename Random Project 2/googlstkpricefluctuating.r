library(ggplot2)

# Create a data frame from the provided data
data <- data.frame(
  Date = as.Date(c("2022-01-03", "2022-01-04", "2022-01-05", "2022-01-06", "2022-01-07", "2022-01-10")),
  Close = c(144.9915, 144.3995, 137.7750, 137.7475, 137.0170, 138.6695)
)

# Create the fluctuating line graph
ggplot(data, aes(x = Date, y = Close)) +
  geom_line(color = "blue") +
  geom_point(color = "blue") +
  labs(title = "Fluctuating Stock Price of Google",
       x = "Date", y = "Closing Price") +
  theme_minimal()
