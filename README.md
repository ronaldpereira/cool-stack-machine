# COOL Stack Machine

Implementation of a stack machine using the educational language Cool.

This program require a COOL (Class Oriented Object Language) to compile and Spim (Mips32 interpreter) to run.

To compile it, just type the following commands:

`$\<pathToCoolcBinary\>/coolc stack.cl atoi.c -o stack.s`

`$\<pathToSpimBinary\>/spim -file stack.s`

This Stack Machine accepts 5 possible input arguments:

- \<int\> -> Any integer you want to add to the stack
- \+ -> Sum the two below integers
- e -> Execute top stack command
- d -> Prints the current stack
- x -> Exit the program

Running example:

``` Shell
> 2
> +
> 3
> s
> d
s
3
+
2
> e
> d
+
3
2
> e
> d
5
> x
COOL program successfully executed
```