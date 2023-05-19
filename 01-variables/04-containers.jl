include("03-strings.jl")

# Vectors
numeric = [1, 2, 3, 6.5]
string_vector = ["A", "B", "C", "D"]
mixed = [1, "one", 2, "two"]

# Matrices
## Multi-line syntax (using line breaks)
A = [1 2 3
     4 5 6
     7 8 9]

## Single line syntax (using ;)
A2 = [1 2 3; 4 5 6; 7 8 9]
A == A2

## Reshaping a vector
reshape([1, 2, 3, 4, 5, 6, 7, 8, 9], (3, 3)) # Not the same as before, Julia is column-major

# Indexing
## Vectors
numeric[1] # Julia starts counting on 1
string_vector[begin] # Equivalent to [1]

## Matrices
A[1, 2] # A[row, column]
A[begin, 3]

## Slicing
numeric[1:3]
A[1:2, 2:3]

# Dictionaries
## Tuples syntax (key, value)
height = Dict([("Alice", 165), ("Bob", 178), ("Charlie", 172)])

## Pair syntax key => value
height = Dict(
    "Alice" => 165,
    "Bob" => 178,
    "Charlie" => 172
)

## Retrieving values
height["Bob"] # Get Bob's height
height["Alice"] # Get Alice's height
