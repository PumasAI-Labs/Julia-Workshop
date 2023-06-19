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
There could be questions about using `|` and `&` instead of `||` and `&&`. If that is the case, explain the difference between
[boolean operators](https://docs.julialang.org/en/v1/manual/mathematical-operations/#Boolean-Operators) (two operators) and
[bitwise operators](https://docs.julialang.org/en/v1/manual/mathematical-operations/#Bitwise-Operators) (single operator).
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
create them using `Tuple`s and the `Pair`s, and how to retrieve the values by indexing using the keys.

## Part 2: syntax

All scripts corresponding to this part of the workshop can be found in the `02-syntax` folder. In this case, it is recommended to start with
`01-conditionals.jl` and follow the numbering scheme, as later scripts (e.g. `02-loops.jl`) use concepts from the previous ones.

When covering the content from `01-conditionals.jl`, start by providing a brief description of what conditional statements are and how
they allow creating more complex programs by altering the flow of execution. Once everyone is comfortable with that idea, show how they
are created in Julia through the `if`, `elseif` and `else` keywords. Make sure to mention that Julia requires the keyword `end` to be
present at the end, as this could be confusing for users coming from other programming languages. After that, go over the example that
uses two `elseif` and doesn't have an `else` case, and use it to explain that conditional statements can be created in many different
ways and that only `if` is required to create one. Lastly, explain how the ternary operator (`?:`) works and how it can be useful to
write `if-else` statements concisely.

Next, go over `02-loops.jl`. Once again, start by explaining that they are used to alter a program's flow of execution through the repeated
evaluation of an expression. Start by explaining `for` loops with the simple example that prints all numbers from 1 to 10. After going over
this example, make sure to mention how using the `for` loop saved a lot of work for this task. Two good ways to convey this idea could be
showing how that would be done without a loop (manually write `println(1)`, `println(2)`, etc.) or changing the range to be much larger
(`e.g. numbers = 1:1000`) so that the hard-coded solution is no longer feasible. After that, go over the example that combines a `for` loop
and a conditional statement to showcase this common pattern.

The next part of `02-loops.jl` covers the use of `while` loops. Start by explaining that `while` loops are different to `for` loops in that
their iterations depend on the value of a boolean variable, instead of a collection or an iterable. Use the same example of printing all numbers
from 1 to 10, focusing on how the `counter` changes until it reaches 11 and provide a brief explanation on why `global` is used when updating
it's value. Next, go over the example of finding a name inside of a list. Use this example to explain why `while` loops are convenient when it
is not necessary to iterate over an entire collection and how this example could be extended for a case where there are many more names in the
list. After that, show how a similar result can be obtained with a `for` loop, a conditional statement and the `break` keyword. This example is also
a good opportunity to discuss one of the main disadvantages of `while` loops, which is that you can easily create infinite loops. Going back to
the previous examples might be required to show how an infinite loop can be created (e.g. the name you are looking for is not in the list or you
forget to update the counter). Lastly, go over array comprehensions and how they can be used to create arrays with loops.

After that, cover the content on `03-assignments.jl`. This script goes over different topics regarding variable assignments, starting with the use
of compound expressions. Show the different ways in which compound expressions can be created, but mention that using `begin..end` with multiple lines
is probably the most common and readable syntax. The next topic is variable scopes. Show how `global` variables can be accessed everywhere and explain
with greater detail why `global` is used inside `while` loops. Next, showcase the use of `local` and how local variables are only accessible where they
are created (inside the loop, in the example). After that, go over the use of `const` to create variables whose values should not change. Use the examples
to show that trying to change the value returns an error if the new value is of a different `Type`, but that you only get a warning if the new value has 
the same `Type` as the original. Finally, explain the variable naming conventions in Julia with an emphasis on how variables and functions are named in 
a different way to `Type`s and `Module`s.

For `04-modules.jl`, start by going over the concept of a software `Module`/package/library as a tool to access other people's code. Go over how packages
are imported with the `using` keyword by showing how to import `Pumas` and `Statistics`. Show that we have access to the `mean` function after importing
`Statistics`. Mention that multiple packages can be imported in a single line, but explain that this syntax quickly becomes difficult to read and that
importing packages in different lines is preferred. Also, show how only certain parts of the package can be loaded with the `Package: func` syntax. After 
that, show the use of `import` and explain how it is different from `using`.

Lastly, go over `05-macros.jl`. Start by mentioning that the purpose of this lesson is to show how macros are used, and that creating macros and using
Julia's metaprogramming tools is an advanced topic that will not be covered in the workshop. Curious attendees can be redirected to [Julia's documentation
section on metaprogramming](https://docs.julialang.org/en/v1/manual/metaprogramming/#Metaprogramming), this [workshop on metaprogramming from JuliaCon 
2021](https://www.youtube.com/watch?v=2QLhw6LVaq0) or other resources you might consider relevant.

First, show that macros start with `@` and quickly go over the examples. Next, show the two ways in which macros can be called: using spaces or 
parenthesis (as in a function). The `@time` and `@doc` macros are used in the examples, so it is a good idea to briefly talk about what those macros do. 
Lastly, show how `@macroexpand` can be used to see what a macro is doing under the hood. 

## Part 3: functions

The code examples for this section of the workshop can be found in the `03-functions` folder.

Start by going over `01-syntax.jl` as this script will cover the basics of defining and calling functions. First, show the standard way
of creating functions with the `function` keyword, and then show how a function can be called once it has been defined. Use the examples
to show that a function can have a single argument, multiple arguments, or no arguments at all. Next, go over the compact assignment form to
create functions, how that can be convenient for small or simple functions and how it allows creating functions in a very similar way
to math. Lastly, go over the `return` keyword, how it can be used to return multiple values and how those values can be retrieved after
a function call.

Next, cover the contents of `02-advanced.jl`. This file contains code examples about a variety of advanced topics regarding the use of
functions in Julia. The first topic is documentation. Show how you can add *docstrings* on top of a function's definition and how you
can then access that documentation in the REPL by typing `?function_name`. If there are users that know how to write Markdown, mention
that docstrings are interpreted as Markdown when displayed in the REPL. After that, go over argument and return `Type`s. Start by explaining
how you can specify the accepted argument `Type`s by showing the examples that work and the ones that produce errors. Once that is clear,
go over specifying the return `Type`, which should be a natural extension of what was shown before.

The next advanced topic is default values for arguments. Go over the example to show how the syntax and make sure to explain how defining
default values could be useful. It is probably important to mention that positional arguments with default values should always be left for
the end (e.g `f(x, y=2)` instead of `f(y=2, x)`). Next, cover the use of keyword arguments. Start by explaining that keyword arguments are
different from positional arguments in that they are identified through their names, not their positions. Then, go over the examples to show
how they are used,and make sure to mention that it is a good practice to separate keyword arguments from positional arguments with a semicolon
(`;`). It might be useful to mention that many packages use keyword arguments, specially for functions that have many arguments,
which are particularly common in plotting packages such as `CairoMakie` or `AlgebraOfGraphics`.

Lastly, go over anonymous functions. Use the example to show how they can be convenient in some cases. Examples using functions like `map`,
`foreach` or `filter` could be useful, but the use of these functions will only be covered in detail until the next part of the workshop.

The last script for this part of the workshop is `03-dispatch.jl`. This is intended to be a brief introduction to 
[multiple dispatch](https://en.wikipedia.org/wiki/Multiple_dispatch) in Julia. Start by showing again how argument `Type`s can be specified
in a function. This should be brief as this topic was covered before. Next, use the code example to explain that sometimes it could be
useful to have one function that behaves differently depending on the arguments that are passed to it. Show how you can "define the function again"
with different argument `Type`s and how this creates another [method](https://docs.julialang.org/en/v1/manual/methods/#Methods) for that function.
To finish, go over the `methods` function, which allows you to see a list of the available methods for a function. Show how to use it with both the
function from the example and a function from Julia's standard library.

## Part 4: functional programming

The files for this part of the workshop are located in the `04-functional_programming` folder.

Start by going over the content on `01-apply.jl`. This script contains examples on the use of vectorized functions, `map` and `foreach` to apply
a function to all elements in an array. To begin, use the example to show how the 
[vectorized version of a function](https://docs.julialang.org/en/v1/manual/functions/#man-vectorized) can be used to apply a function to a collection
in a concise syntax. Make sure to mention that this behavior is available for in *any* Julia function. Using an example from a function that was not defined
in the script might be useful for this. Also, cover the use of the `@.` macro as a convenient tool to write expressions that require using the vectorized
version of many functions.

Next, go over the use of the `map` function, which allows getting the same results as before by specifying the function and the collection as it's
arguments. Explain the examples and make special emphasis on the use of `map` with anonymous functions, since this is a common use case for the function.
After that, explain how the `foreach` function works. Here, is it very important to make sure that users understand the difference between `map` and `foreach`.
There is a more complex example on the use of `foreach` to showcase a particular case where using it could be more convenient than `map`.

After that, move on to the `02-reduce.jl` script. This part of the lesson is focused on the use of `reduce` and `mapreduce` to collapse containers into a single
value. Start by showing the simple examples involving `+` and `*` and then go over the more complex one involving a custom function. Make sure to provide a
detailed explanation on how this function is created as it could be confusing at first, but note that `reduce` is often used with `+` and `*`. Users might
be curious as to why it was necessary to provide an initial value in the example for the custom function and not before. If that is the case, you can answer
that the `init` keyword argument is required for all functions except `+`, `*`, `min` and `max`. Next, cover the common use pattern of `reduce` + `map` and
mention that the same results can be achieved with `mapreduce`, but with improved performance. You can find more information about this in 
[`mapreduce`'s docstring](https://docs.julialang.org/en/v1/base/collections/#Base.mapreduce-Tuple{Any,%20Any,%20Any}).

The next script that you should go over is `03-filter.jl`. The code examples in this file focus on the use of the `filter` function, which allows
retrieving the elements of an array that satisfy a given condition. Go over the syntax, highlighting the fact that it is the same as `map`, `foreach`
and `reduce`. You might need to spend extra time in the example about removing `missing` values. In particular, make sure to explain why it is
necessary to using the `ismissing` function. Lastly, show the use of the `count` function as an alternative to `filter` when you are only interested
in knowing how many elements satisfy a condition (as opposed to knowing which elements satisfy the condition).

Finally, go over the contents on `04-composition.jl`. This is a brief introduction to composing and chaining function calls. Start by going over the 
composition operator (`∘`). Show that this is an alternative to calling multiple functions inside each other (e.g `func1(func2(func3(args)))`) and
explain how it allows combining simple functions to create a more complicated one. Also, make sure to showcase how you can define a new
function from the composition of multiple functions through the assignment syntax (`new_function = func1 ∘ func2 ∘ func3`) and that you can define the
function and call it in one go (`(func1 ∘ func2 ∘ func3)(args)`). It is likely that users won't know how to type `∘`, so make sure to mention that
it is created with `\circ<TAB>`.

The last topic for this lesson is function chaining through the pipe operator (`|>`). Show how it can be used to get the same results as with function
composition, but with a different syntax. Make sure to mention that parenthesis are required when using anonymous functions and that the pipe operator
can be used in a vectorized version (`.|>`).

## Get in touch

If you have any suggestions or want to get in touch with our education team,
please send an email to <training@pumas.ai>.

## License

This content is licensed under [Creative Commons Attribution-ShareAlike 4.0 International](http://creativecommons.org/licenses/by-sa/4.0/).

[![CC BY-SA 4.0](https://licensebuttons.net/l/by-sa/4.0/88x31.png)](http://creativecommons.org/licenses/by-sa/4.0/)
