# Load required library
library(ggplot2)

# Set seed for reproducibility (optional)
set.seed(123)

# Initialize a vector to store results
results <- integer(1000)

# Repeat 1000 times
for (i in 1:1000) {
  # Create 2 random integers between 1 and 6
  x <- sample(1:6, 1)
  y <- sample(1:6, 1)

  # Display each (optional, comment out if too long)
  # print(c(x, y))

  # Add them
  s <- x + y

  # Store the result
  results[i] <- s
}

# Convert results to a data frame for plotting
df <- data.frame(sum = results)

# Plot bar graph of frequency of numbers
ggplot(df, aes(x = factor(sum))) +
  geom_bar(fill = "skyblue", color = "black") +
  labs(
    title = "Frequency of Dice Sums (1000 Trials)",
    x = "Sum of Two Dice",
    y = "Frequency"
  ) +
  theme_minimal()
