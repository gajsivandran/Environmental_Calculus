# Sector Search Game in R

# Pick a random number between 1 and 10
secret_number <- sample(1:10, 1)

# Initialize guess counter
guess_count <- 0

repeat {
  # Ask user for a guess
  guess <- as.integer(readline(prompt = "Guess a number between 1 and 10: "))

  # Update counter
  guess_count <- guess_count + 1

  # Check if guess is correct
  if (guess == secret_number) {
    cat("Correct! You guessed it in", guess_count, "tries.\n")
    break
  } else {
    cat("Not correct. Try again.\n")
  }
}
