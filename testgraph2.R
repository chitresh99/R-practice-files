# Sample data
x <- 1:5
y <- c(2, 4, 6, 8, 10)

# Create a plot with x and y
plot(x, y,
    type = "o", col = "blue", pch = 16, lwd = 2, ylim = c(0, max(y) + 2),
    xlab = "X-axis", ylab = "Y-axis", main = "Simple Graph"
)

# Add a legend
legend("topleft", legend = "Data", col = "blue", pch = 16, lwd = 2)
