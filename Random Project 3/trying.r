# Install and load the required packages
#install.packages("quantmod")
#install.packages("zoo")
library(quantmod)
library(zoo)

# Set your Quandl API key (replace "YOUR_API_KEY" with your actual API key)
Sys.setenv("QUANDL_API_KEY" = "otKCgSjM48Ls5ospnmhM")  # Set your API key

# Retrieve historical oil price data for Brent Crude Oil
symbol <- "BZ=F"
oil_data <- getSymbols(symbol, src = "yahoo", auto.assign = FALSE)

# Interpolate missing values
oil_data <- na.approx(oil_data)

# Print the modified oil_data
print(oil_data)
