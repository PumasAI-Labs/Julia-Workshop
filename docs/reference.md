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
 
## Summary of Basic Commands

### Part 1: variables and types

| Action      | Command       | Observations          |
| ----------- | ------------- | --------------------- |
| Check a variable's type | `typeof` | Used as `typeof(var)` |
| Calculate a square root | `sqrt` or `√` | Returns the square root of a number |
| Negation | `!` | Negates a boolean expression |
| OR operator | `||` | Returns `true` if at least one of the expressions is `true` |
| AND operator | `&&` | Returns `true` if all the expressions are `true` | 
| String concatenation | `string` and `*` | `string(str1, str2, str3)` and `str1` * `str2` * `str3` have the same effect|
| String interpolation | `$` | Used as `$(expression)` |
| Pattern matching | `contains` and `occursin` | Used as `contains(haystack, needle)` and `occursin(needle, haystack)` |
| Return a string with all capital letters | `uppercase` |  |
| Return a string with all lower case letters | `lowercase` |  |
| Return a string in title case | `titlecase` |  |
| Replace a part of a string | `replace` | Used as `replace(str, original_part => new_part, ...)` |
| Reshape a `Vector` | `reshape` | Used as `reshape(vector, new_shape)`, where `new_shape` could be `(3, 3)` to create a 3x3 matrix (if `vector` contains the appropriate number of elements) |
| Indexing or slicing | `vector[1]`, `vector[1:10]`, `matrix[1, 2]`, `matrix[1:3, 2:4]` | Indexing returns a single value, while slicing returns multiple values |
|   
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

## Get in touch

If you have any suggestions or want to get in touch with our education team,
please send an email to <training@pumas.ai>.

## License

This content is licensed under [Creative Commons Attribution-ShareAlike 4.0 International](http://creativecommons.org/licenses/by-sa/4.0/).

[![CC BY-SA 4.0](https://licensebuttons.net/l/by-sa/4.0/88x31.png)](http://creativecommons.org/licenses/by-sa/4.0/)
