# Install and load the 'zoo' package
install.packages("zoo")
library(zoo)

# Interpolate missing values
oil_data <- na.approx(oil_data)
