# Concatenate strings
full_name <- paste("John", "Doe")
# Output: "John Doe"

# Extract substrings
first_name <- substr(full_name, 1, 4)
# Output: "John"

last_name <- substr(full_name, 6, 8)
# Output: "Doe"

# Convert case
uppercase_name <- toupper(full_name)
# Output: "JOHN DOE"

lowercase_name <- tolower(full_name)
# Output: "john doe"

# Pattern matching
has_match <- grepl("Doe", full_name)
# Output: TRUE
