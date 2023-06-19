# Sometimes we want to go from a container to a single value

## reduce
x = 1:10

reduce(+, x) # Sum of all numbers in x
reduce(*, x) # Product of all numbers in x

### Of course, Julia has convenience functions for those simple cases
sum(x)
prod(x)

### Custom function
square_sum(accumulated, x) = accumulated + x^2
reduce(square_sum, x; init=0) # Need to set the accumulated value to 0 at the start
sum([i^2 for i in x]) # Check

### Tip: use reduce and map
reduce(+, map(i -> i^2, x))

## mapreduce -> map + reduce, but better
mapreduce(i -> i^2, +, x) # mapreduce(<function for map>, <function for reduce>, <collection>)
