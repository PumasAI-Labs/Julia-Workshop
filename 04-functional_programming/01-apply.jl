# Functional programming is about creating your programs by applying and composing functions

# Apply a function to a collection
f(x) = x^2
x = 1:10

## We could do an array comprehension
[f(i) for i in x]

## Vectorize the function
f(x) # Doesn't work: x^2 is not defined for a vector
f.(x) # f.(x) tells Julia to evaluate the function for each element
sin.(0:0.1:2π) # Works with any Julia function

### Tip: you can use the @. macro if you want to vectorize multiple function calls
y = 11:20
sin(x*y + 2) # Doesn't work
sin.(x .* y .+ 2) # We need to vectorize both operations
@. sin(x*y + 2) # The macro just vectorizes everything for us

## Use the map function
map(f, x)
map(sin, 0:0.1:2π)

### Tip: anonymous functions are often used with map
map(x -> x^2, x)
map(i -> iseven(i) ? "$i is even" : "$i is odd", x) # Anonymous function + ternary operator

# Execute a function for each element (map, but when the results are not needed)
foreach(f, x) # We don't get anything back
typeof(foreach(f, x))

foreach(println, x) # Print all numbers (we just want to print)

greet(name) = println("Hello, $(name)!")
foreach(greet, ["Alice", "Juan", "Bob"])

## More complex example: create and delete some files
files = map(i -> "file$i.txt", 1:3)
foreach(touch, files) # Use the touch function to create the files
readdir() # Check that the files are there
foreach(rm, files) # Use the rm function to delete the files
readdir() # Check that they are gone

