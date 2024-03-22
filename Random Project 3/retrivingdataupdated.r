library(quantmod)

# Set your Quandl API key (replace "YOUR_API_KEY" with your actual API key)
Sys.setenv("QUANDL_API_KEY" = "otKCgSjM48Ls5ospnmhM")  # Set your API key

# Retrieve historical oil price data for Brent Crude Oil
getSymbols("BZ=F", src = "yahoo")
oil_data <- BZ=F