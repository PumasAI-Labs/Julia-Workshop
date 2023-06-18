---
title: Reference Sheets for Pumas-AI Julia Workshop
---

[![CC BY-SA 4.0](https://img.shields.io/badge/License-CC%20BY--SA%204.0-lightgrey.svg)](http://creativecommons.org/licenses/by-sa/4.0/)

## Key Points

### Part 1: variables and types

- Although there are more numeric types, `Integer`s and `Float`s are the most common ones.
- `Float`s are also known as `double`s in other programming languages.
- Underscores (`_`) could be helpful to define large numbers. For example, 
`1000000` could be written as `1_000_000`.
- `typeof` can be used to check a variable's type.
- Julia supports defining numbers in scientific notation (e.g `1e3` is `1*10^3`).
- Square roots can be calculated using `sqrt` or `√`, written as `\sqrt<TAB>.`
- Boolean variables can only take two values: `true` or `false`.
- When used in a math context, `true` is interpreted as `1` and `false` as `0`.
- `String`s are defined using double or triple quotes in Julia. Single quotes are
reserved for `Char`s and cannot be used to define `String`s.
- There are many ways to concatenate `String`s:
    - Using the `string` function.
    - Using `*`.
    - Using `$` for interpolations.
- `String` interpolations are very poweful and can contain complex expressions.
- Julia has extensive support for pattern matching, including the use of [regular expressions](https://en.wikipedia.org/wiki/Regular_expression).
- There are convenience functions such as `uppercase` or `lowercase` that
allow formatting `String`s.
- `Vector`s are one-dimensional structures that can contain any type of variable.
- Matrices can be defined using line breaks, `;` or through `reshape`.
- Single values can be retrieved through indexing, while slicing allows
retrieving multiple values.
- Dictionaries store a collection of (key, value) pairs, where values are
retrieved by indexing with the keys.

### Part 2: syntax

- Conditional statements are created with the `if`, `elseif` and `else`
keywords.
- You can add as many `elseif` as needed, and don't need to add `else`. You can
also have a conditional statement that only includes `if`.
- The ternary operator (`?:`) provides a convenient way to create an `if-else` 
statement in a single line.
- There are two types of loops, which are created with `for` and `while` keywords.
- `for` loops are useful when you need to iterate over all elements and
`while` loops are more suited to when you only want to loop as long as certain
conditions are met.
- You can emulate the behavior of a `while` loop in a `for` loop by using
a conditional statement and `break`.
- Conditional statements and loops should always have the `end` keyword at the end.
- Array comprehensions provide a powerful way to create an array using `for`
loops.
- Compound expressions allow creating blocks of code through the `begin...end` syntax.
- `global` variables are available everywhere, while `local` variables are
only available in the context where they are created.
- Constant variables can be defined using the `const` keyword before the variable definition.
- Variables should always be named with lowercase letters, and spaces should
be replaced with underscores (`_`).
- `Module`s and `Types`' names start with a capital letter and use 
[CamelCase](https://en.wikipedia.org/wiki/Camel_case) instead of spaces.
- Macros start with `@`.
- Macros can be called through spaces or with parenthesis (as in functions).
- `@macroexpand` can be used to examine what a macro is doing under the hood.

### Part 3: functions

- Complex functions can be created with the `function` keyword, while simpler ones can be 
more conveniently defined using the compact assignment form (e.g `f(x) = x^2`).
- When a function doesn't have a return value, it is a good practice to place `return end` at the
end of the function definition.
- You can return multiple values by separating them with commas (e.g `return value1, value2, ...`).
Multiple return values can then be retrieved by indexing the resulting `Tuple` or by separating 
the variables where they will be stored with commas (e.g `value1, value2 = f(x)` with `f(x)` having
`return value1, value2` at the end).
- You can add documentation to a function by adding [docstrings](https://docs.julialang.org/en/v1/manual/documentation/#Writing-Documentation)
on top of the function definition. These strings are interpreted as Markdown, and can be accessed
from the Julia REPL by typing `?function_name`.
- You can constrain the variable `Type`s that are accepted as input and the variable `Type` returned
by the function using `::`. For example, in `product(x::Int, y::Int)::Float64 = x*y`, the two arguments 
are restricted to be of type `Int` and the return value to be a `Float64`).
- You can set default values for a function's arguments by using the assignment syntax inside 
of the function's definition. For instance, `f(x = 2) = 2x` will make `2` be the default value
for `x`.
- Keyword arguments are separated from positional arguments with a semicolon (`;`). The order in
which keyword arguments are passed to the function doesn't matter. Instead, the names are used
to identify which value is assigned to which argument.
- Anonymous functions can be used when the name of the function is not relevant. 
- Multiple dispatch allows specifying a different behavior for functions depending on the arguments that
are passed to them. Each one of those definitions are known as [methods](https://docs.julialang.org/en/v1/manual/methods/#Methods).
- You can check the available methods for a function with the `methods` function (e.g `methods(println)`).

### Part 4: functional programming

- The dot syntax (`f.(x)`) allows you to use the vectorized version of a function.
- You can apply a function on each element of an array using the `map` function.
- You can execute a function on each element of an array using the `foreach` function. `foreach` 
differs from `map` in that it does not return an array with the results, so it should only 
be used when the return values of the function being applied are not needed.
- The `reduce` function allows collapsing the elements of an array using a function. 
- A common use of `reduce` consists on creating an array with `map` and then passing it to `reduce`
to obtain a single value. Instead of doing this, it is recommended to use `mapreduce`, which offers
this functionality and has better performance.
- You can pick the elements that satisfy a given condition in an array using the `filter` function.
- If you want to check if a variable is `missing`, you should use the function `ismissing` instead of
a comparison such as `var == missing`, which will always return `missing`, regardless of `var`'s `Type`.
- If you are only interested in knowing how many elements satisfy a given condition, you can use the 
`count` function.
- Functions can be combined using the composition operator (`∘`).
- Consecutive function calls can be chained using the pipe operator (`|>`).

## Summary of Basic Commands

### Part 1: variables and types

| Action      | Command       | Observations          |
| ----------- | ------------- | --------------------- |
| Integer type | `Int8`, `Int16`, `Int32`, `Int64` (`Int`) and `Int128` | Notation is `IntX`, where `X` denotes the number of bits used to represent the number |
| Floating-point number types | `Float16`, `Float32` and `Float64` | Notation is `FloatX`, following the same logic as `IntX` (see previous row) |
| Boolean type | `Bool` | Can be `true` or `false` |
| String type | `String` | Shouldn't be confused with the function `string` |
| Vector type | `Vector{type}` | If a vector contains `Float64`s it would be `Vector{Float64}` or if contains multiple types it would be `Vector{Any}` |
| Matrix type | `Matrix{type}` | Follows the same syntax as `Vector`s (see previous row) |
| Dictionary type | `Dict{key_type, value_type}` | If a dictionary has `String` keys pointing to `Float64` values, it would be `Dict{String, Float64}` | 
| Check a variable's type | `typeof` | Used as `typeof(var)` |
| Calculate a square root | `sqrt` or `√` | Returns the square root of a number |
| Negation | `!` | Negates a boolean expression |
| OR operator | `||` | Returns `true` if at least one of the expressions is `true` |
| AND operator | `&&` | Returns `true` if all the expressions are `true` | 
| String concatenation | `string` and `*` | `string(str1, str2, str3)` and `str1` * `str2` * `str3` have the same effect|
| String interpolation | `$` | Used as `$(expression)` |
| Pattern matching | `contains` and `occursin` | Used as `contains(haystack, needle)` and `occursin(needle, haystack)` |
| Pattern matching (beginning) | `startswith` | Check whether a `String` begins with a given sequence |
| Pattern matching (ending) | `endswith` | Check whether a `String` ends with a given sequence |
| Return a string with all capital letters | `uppercase` |  |
| Return a string with all lower case letters | `lowercase` |  |
| Return a string in title case | `titlecase` |  |
| Replace a part of a string | `replace` | Used as `replace(str, original_part => new_part, ...)` |
| Reshape a `Vector` | `reshape` | Used as `reshape(vector, new_shape)`, where `new_shape` could be `(3, 3)` to create a 3x3 matrix (if `vector` contains the appropriate number of elements) |
| Indexing or slicing | `vector[1]`, `vector[1:10]`, `matrix[1, 2]`, `matrix[1:3, 2:4]` | Indexing returns a single value, while slicing returns multiple values |

### Part 2: syntax

| Action      | Command       | Observations          |
| ----------- | ------------- | --------------------- |
| Create a conditional statement | `if`, `elseif`, `else` | Should always contain `if`, but `elseif` and `else` are optional |
| Create a one line `if-else` conditional statement | `<boolean> ? <run if true> : <run if false>` | Known as ternary operator | 
| Create a `for` loop | `for` | Iterates over all elements |
| Create a `while` loop | `while` | Iterates as long as a boolean expression is `true` |
| Exit a loop | `break` | |
| Create an array with a `for` loop | `[<expression involving i> for i in collection]` | Known as array comprehensions |
| Create a code block | `begin...end` | |
| Define a global variable | `global` | Used as `global var = var_value` |
| Define a local variable | `local` | Used as `local var = var_value` |
| Define a constant variable | `const` | Used as `const var = var_value`  | 
| Import a module | `using` or `import` | `using` makes the content from the package directly available, while import requires `Package.func` to use it |
| Macro call | `@macro arg` or `@macro(arg)` | | 
| See what a macro is doing under the hood | `@macroexpand <macro call>` | |

### Part 3: functions

| Action                                    | Command                     | Observations                                                                      |
|-------------------------------------------|-----------------------------|-----------------------------------------------------------------------------------|
| Create a function (multiple lines syntax) | `function name(args)`       | Used for long and complex functions                                               |
| Create a function (compact assignment form) | `name(args) = <expression>` | Used for short and simple functions. Similar to how functions are defined in math |
| Create a function (anonymous) | `(arg1, arg2, ...) -> <expression>` | Used when the function's name is not relevant |
| Access a function's documentation from the REPL | `?function_name` | Docstrings are interpreted as Markdown |
| Specify `Type`s of a function's arguments | `f(x::<type for x>, y::<type for y>, ...) = ...` | |
| Specify the `Type` of a function's return | `f(x, y)::<type for return> = ...` | |
| Define default values for an argument | `f(x=<default for x>, y=<default for y>) = ...` | Default values for positional arguments should be left for the end (e.g `f(x, y=2)` instead of `f(y=2, x)`, which will throw an error. |
| Define keyword arguments for a function | `f(<positional args>; <keyword args>) = ...` | Keyword arguments are separated from positional arguments with a semicolon (`;`) |
| Check the available methods for a function | `methods(function)` | | 

### Part 4: functional programming

| Action      | Command       | Observations          |
| ----------- | ------------- | --------------------- |
| Call the vectorized form of a function | `f.(x)` | Returns the result of evaluating `f` on each element of array `x` |
| Apply a function on each element of an array | `map` | Used as `map(function, array)` |
| Run a function on each element of an array | `foreach` | Similar to `map`, but doesn't return an array (just runs the function) |
| Collapse all elements of an array into a single value using a function | `reduce` | Used as `reduce(reducing_function, array)` |
| Create an array with `map` and then collapse it with `reduce` | `mapreduce` | Equivalent to `reduce(reducing_function, <map call>)`, but more efficient |
| Get the elements that satisfy a given condition from an array | `filter` | Used as `filter(<function returning boolean>, array)` |
| Check if a variable is missing | `ismissing` | Should be used instead of `var == missing`, which doesn't work |
| Count how many elements satisfy a given condition in an array | `count` | Used in the same way as `filter` |
| Compose functions | `(function3 ∘ function2 ∘ function1)(arg)` | `∘` is created with `\circ<TAB>` |
| Chain function calls | `arg |> function1 |> function2 |> function3` | `|>` can be vectorized as `.|>` |

## Glossary

### Part 1: variables and types

PEMDAS

: Short for **P**arenthesis, **E**xponents, **M**ultiplication, **D**ivision, **A**ddition
and **S**ubstraction, which is the order in which mathematical operations are computed in Julia.

Scientific notation

: Method for expressing numbers in decimal form (e.g 1200 would be 1.2x10³), commonly used
in science, mathematics and engineering.

Boolean

: `Type` of variable that can only take two values: `true` or `false`.

Dictionary

: `Type` of variables that stores a collection of (key, value) pairs.

### Part 2: syntax

Conditional statement

: Expression that allows controlling a program's flow of execution based on the value of a boolean expression.

Loops

: Tool that allows controlling a program's flow of execution through the repeated evaluation of an expression.

Camel Case

: Writing style where spaces are replaced by capital letters (e.g Camel case becomes CamelCase). `Module`s and 
`Type`s are named using this style in Julia.

Macros

: Special tool for [metaprogramming](https://docs.julialang.org/en/v1/manual/metaprogramming/) in Julia.

### Part 3: functions

Function

: Julia object that maps a series of argument values to a return value.

Anonymous function

: A function that is created without specifying a name.

Multiple dispatch

: Feature in Julia that allows a function to behave differently based on the `Type`s of
the arguments passed to it.

### Part 4: functional programming

[Functional programming](https://en.wikipedia.org/wiki/Functional_programming)

: Programming strategy that relies on creating and combining functions. 

Vectorized function

: Form of a function that allows applying it to all elements of a vector (e.g 
`f([x1, x2, x3]) = [f(x1), f(x2), f(x3)]`)

[Function composition](https://en.wikipedia.org/wiki/Function_composition)

: Combining two or more functions to create a new one that chains them together. 
For example, composing functions the `f(x)` and `g(x)` (`f ∘ g`) creates a new
function defined as `f(g(x))`.

## Get in touch

If you have any suggestions or want to get in touch with our education team,
please send an email to <training@pumas.ai>.

## License

This content is licensed under [Creative Commons Attribution-ShareAlike 4.0 International](http://creativecommons.org/licenses/by-sa/4.0/).

[![CC BY-SA 4.0](https://licensebuttons.net/l/by-sa/4.0/88x31.png)](http://creativecommons.org/licenses/by-sa/4.0/)
