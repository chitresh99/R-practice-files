library(quantmod)

# Set the start and end dates for the data
start_date <- as.Date("2022-01-01")
end_date <- Sys.Date() # Use today's date as the end date

# Retrieve the stock price data for Google
getSymbols("GOOGL", src = "yahoo", from = start_date, to = end_date)

# Extract the closing prices
google_prices <- Cl(GOOGL)

# Print the data
head(google_prices)
