#install.packages("Quandl")
library(Quandl)

# Set your Quandl API key (replace "YOUR_API_KEY" with your actual API key)
Quandl.api_key("otKCgSjM48Ls5ospnmhM")  # Set your API key

# Retrieve historical oil price data for Brent Crude Oil
oil_data <- Quandl("CHRIS/ICE_B1")
