# Often times you want to call multiple functions, passing the results to the next one

exp(sqrt(abs(-2))) # Compute abs(-2), pass the result to sqrt and then pass the result to exp

# Function composition
f = (exp ∘ sqrt ∘ abs) # ∘ => \circ<TAB>
f(-2)

(exp ∘ sqrt ∘ abs)(-2) # You can also do it in one line (avoid defining the function)

## More complex example: vector norm
v = [1, 0.5, 2.3]

√(sum(map(i -> i^2, v)))
√(mapreduce(i -> i^2, +, v))

vector_norm = (sqrt ∘ sum ∘ i -> i.^2)
vector_norm(v)

using LinearAlgebra
norm(v) # Check our results

# Function chaining (piping)
-2 |> abs |> sqrt |> exp # Opposite order from composition

## Vector norm
v |> (i -> i.^2) |> sum |> sqrt
v .|> (i -> i^2) |> sum |> sqrt # You can vectorize the piping operator (.|>)
