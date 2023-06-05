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

## Glossary

### Part 1: variables and types

`PEMDAS`

: Short for **P**arenthesis, **E**xponents, **M**ultiplication, **D**ivision, **A**ddition
and **S**ubstraction, which is the order in which mathematical operations are computed in Julia.

`Scientific notation`

: Method for expressing numbers in decimal form (e.g 1200 would be 1.2x10³), commonly used
in science, mathematics and engineering.

`Boolean`

: Type of variable that can only take two values: `true` or `false`.

`Dictionary`

: Type of variables that stores a collection of (key, value) pairs.

### Part 2: syntax

`Conditional statement`

: Expression that allows controlling a program's flow of execution based on the value of a boolean expression.

`Loops`

: Tool that allows controlling a program's flow of execution through the repeated evaluation of an expression.

`Camel Case`

: Writing style where spaces are replaced by capital letters (e.g Camel case becomes CamelCase). `Module`s and 
`Type`s are named using this style in Julia.

`Macros`

: Special tool for [metaprogramming](https://docs.julialang.org/en/v1/manual/metaprogramming/) in Julia.

## Get in touch

If you have any suggestions or want to get in touch with our education team,
please send an email to <training@pumas.ai>.

## License

This content is licensed under [Creative Commons Attribution-ShareAlike 4.0 International](http://creativecommons.org/licenses/by-sa/4.0/).

[![CC BY-SA 4.0](https://licensebuttons.net/l/by-sa/4.0/88x31.png)](http://creativecommons.org/licenses/by-sa/4.0/)
