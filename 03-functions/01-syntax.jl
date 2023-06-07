# Functions
## Powerful and commonly used tool in Julia and other programming languages

## Multiple lines syntax
function greet(name) # function name(args)
    println("Hello, $name") # Manipulate args
end # Watch out: end is required

greet("James")
greet("Alice") # We have created code that works for anyone

### Multiple arguments
function add(x, y) # Here we have two arguments, and we could add more add(x, y, z, ...)
    result = x + y
    return result # The return function indicates what should be the result of calling the function
end

add(2, 3)
add(1, 10)

### No arguments
function hello_world()
    println("Hello, world!")
end

hello_world()

## Single line syntax
greet(name) = println("Hello, $name") # name(args) = result

greet("James")
greet("Alice")

add(x, y) = x + y

add(2, 3)
add(1, 10)

f(x) = x^2 # Natural way to define math functions

f(2)
f(3)

## Return multiple values
function even_greater_than_10(number)

    even = iseven(number) # A function that we didn't write
    greater = number > 10

    return even, greater # Return multiple values with return1, return2, return3, ...

end

checks = even_greater_than_10(12) # We get a Tuple

# Extract values by indexing the Tuple
even = checks[1]
greater = checks[2]

## Tip: compact way to get multiple values
even, greater = even_greater_than_10(13)
even
greater
