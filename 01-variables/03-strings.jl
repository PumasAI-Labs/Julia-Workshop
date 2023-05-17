include("02-booleans.jl")

# Strings are created with double quotes
"Hello, world!"
'Hello, world!' # Watch out: single quotes are reserved for Chars
'A'
'B'

## Tip: create longer strings spanning more than one line with triple quotes
text = """
Lorem ipsum dolor sit amet, consectetur adipiscing elit.
Quisque mollis suscipit tincidunt. Morbi vulputate libero ex,
quis maximus nunc rutrum non.
"""

# Join strings
greeting = "Hello"
name = "Jake"

## using string()
string(greeting, ", ", name)

## using * (same as multiplication)
greeting*", "*name # Watch out: + doesn't work

## Interpolation
"$greeting, $name"

### Tip: you can place more complicated expressions inside of $()
"One plus two is equal to $(1 + 2)"

# Pattern matching
contains("banana", "ana") # Check if "ana" is in "banana"
occursin("ana", "banana")

# Formatting
sample_text = "This is an example"

uppercase(sample_text)
lowercase(sample_text)
titlecase(sample_text)

replace(sample_text, "This is" => "That was")
