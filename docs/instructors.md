---
title: Instructor's Notes for Pumas-AI Julia Workshop 
---

[![CC BY-SA 4.0](https://img.shields.io/badge/License-CC%20BY--SA%204.0-lightgrey.svg)](http://creativecommons.org/licenses/by-sa/4.0/)

## Part 1: variables and types

All scripts corresponding to this part of the workshop can be found in the `01-variables` folder. We suggest starting
with `01-numeric.jl` and moving on according to the numbering system (e.g after `01-numeric.jl`, go through `02-booleans.jl`),
but you could adjust this according to your needs. In any case, we suggest leaving `04-containers.jl` for the end, as going
through the concepts on that script will probably be easier after covering the content on the other ones.

When showcasing `01-numeric.jl`, start explaining that Julia has extensive support for numeric variables, but that
most users will use and come across `Float`s and `Integer`s. Go over the definition of `Integer`s, what they mean
and how variables are assigned in Julia. Make sure to mention the use of underscores (`_`) as a useful tool to define 
large numbers. Next, go over `Float`s following a similar approach to the one used to explain integers. Mention that
`Float`s are also known as `double`s in other programming languages. Show how you can create the same values as before, 
but as `Float`s (e.g, `1` and `1.0`) and use this opportunity to explain the use of `typeof` to check a variable's type. 
Here you can show how to define numbers in scientific notation. Lastly, go over all the math operations, mentioning the 
[PEMDAS order of operations](https://en.wikipedia.org/wiki/Order_of_operations), how to calculate square roots with `\sqrt<TAB>` 
and briefly showcasing rational and complex numbers.

For `02-booleans.jl`, start by showing the possible comparisons between numbers (less than, greater than, etc.). After that,
explain the use of `!` for negation, `||` for OR and `&&` for AND. Make sure to go over how these operators work if needed.
Next, go over the `true` and `false` types, using the examples to showcase how they work and further explain the use of the 
operators. Mentioning that in Julia these types start with lower case could be useful if there are Python users in the
audience. Lastly, show how boolean values can be used in math operations.

When going over `03-strings.jl`, begin by showing how strings are created in Julia using double quotes. Mentioning that Julia
doesn't support creating strings with single quotes is probably a good idea, specially if there are R or Python users in the 
audience. Also, make sure to mention the use of triple quotes as an alternative to create longer strings spanning more than one
line. For the next part, go over some of the string manipulations, starting with joining strings and showing the different methods
on the script. Next, go over the use of `contains` and `occursin` for pattern matching and the formatting functions (e.g, `uppercase`).

Lastly, cover `04-containers.jl`. Start by showing how `Vector`s are created using the examples to show that they can contain any type
of variables. Next, go over matrices and the two different methods that could be used to create a matrix (line breaks and `;`). As an
alternative, show the use of `reshape` to create a matrix from a `Vector`, and use this opportunity to discuss what Julia being column-major
means. After that, show how indexing and slicing works for both `Vector`s and matrices. Lastly, go over dictionaries. Start by showing how to
ceate them using `Tuple`s and the `Pair`s, and how to retrieve the values by indexing using the keys.

## Get in touch

If you have any suggestions or want to get in touch with our education team,
please send an email to <training@pumas.ai>.

## License

This content is licensed under [Creative Commons Attribution-ShareAlike 4.0 International](http://creativecommons.org/licenses/by-sa/4.0/).

[![CC BY-SA 4.0](https://licensebuttons.net/l/by-sa/4.0/88x31.png)](http://creativecommons.org/licenses/by-sa/4.0/)
