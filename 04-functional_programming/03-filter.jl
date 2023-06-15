# Filter elements from an array using a function

# filter returns all elements that satisfy a certain condition
x = 1:10

filter(iseven, x) # Get all even numbers (iseven(x) = true)
filter(!iseven, x) # Get all odd numbers (negate iseven)
filter(isodd, x) # Get all odd numbers (isodd(x) = true)

## Custom function: find names that contain the letter "e" and have at least 5 characters
is_interesting(name) = contains(name, "e") && (length(name) ≥ 5) # The return value should be a Boolean variable

names = ["Alice", "Juan", "Bob", "Jake"]
filter(is_interesting, names) # Jake is too short

# Count occurrences that satisfy a certain condition
count(iseven, x) # There are 5 even numbers between 1 and 10
count(is_interesting, names) # There is only one interesting name in our list
