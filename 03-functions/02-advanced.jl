# Write documentation for your functions (docstrings)
"""
This function takes a name and prints a nice
greeting message.
"""
function greet(name)
    println("Hello, $name")
    return nothing # Style convention when a function doesn't return a value
end

greet("James") # Behaves as you would expect

## Now try ?greet in the REPL

# Argument and return types
"""
This functions takes two integers and returns the product
"""
product(x::Int, y::Int) = x*y # Add two integers

product(2, 3) # Works well
product(2.72, 3.14) # Doesn't work
typeof(product(2, 3)) # We get an Int as an answer, let's make it a Float64

product(x::Int, y::Int)::Float64 = x*y

product(2, 3)
typeof(product(2, 3))

# Default values
function greet(name = "user") # We are setting the default name to be user
    println("Hello, $name")
    return nothing
end

greet() # We don't need to give a name because we provided a default value
greet("Alice") # Normal behavior if we provide a name

# Keyword arguments
## Arguments that can be specified through names instead of positions
function identify_args(positional1, positional2; keyword1, keyword2)
    message = """

    Positional arguments:

    - positional1 = $positional1
    - positional2 = $positional2

    Keyword arguments:

    - keyword1 = $keyword1
    - keyword2 = $keyword2

    """

    println(message)

    return nothing

end

identify_args(1, 2; keyword1=3, keyword2=4) # Keyword arguments are separated from the rest by ;
identify_args(1, 2, keyword1=3, keyword2=4) # Also works, but using ; is recommended

identify_args(1, 2; keyword2=4, keyword1=3) # Order doesn't matter for keyword arguments

# Anonymous functions
"""
This function takes a function an applies it to
a vector of numbers
"""
function apply(func, vector) # Watch out: you cannot use "function" as a argument name

    new_vector = [func(element) for element in vector] # Array comprehension
    return new_vector

end

## Let's try to calculate x² for all numbers between 1 and 10
x = 1:10

f(x) = x^2
apply(f, x)

## Now for x³
g(x) = x^3
apply(g, x)

## In those cases, we don't really care about the name of the function.
## This is a good use case for anonymous functions
apply(x -> x^2, x) # Syntax is arg -> f(arg)
apply(x -> x^3, x)
