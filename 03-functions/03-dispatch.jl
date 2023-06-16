# Julia functions can behave differently depending on the types of arguments that are passed to them

# We already saw how to constrain argument types
multiply(x::Int, y::Int) = x*y
multiply("Hello", 3) # Throws an error since x is not an Int

# Suppose we would also like to have somehting that "multiplies" string
## We could create another function for that
multiply_string(x::String, y::Int) = repeat(x, y) # repeat string "y" times
multiply_string("Hello", 3)

# But now we created another function that we need to remember
## Multiple dispatch can solve that
multiply(x::String, y::Int) = repeat(x, y)

multiply("Hello", 3) # Now it works
multiply("Hello", 5)

multiply # Note that now "multiply" is a function with 2 methods

## Tip: check methods available for a function
methods(multiply)
methods(string) # An example for a Julia function that has many methods
