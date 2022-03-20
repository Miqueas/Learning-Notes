#[
  Variadic arguments
    This type of functions in Nim uses the syntax:

      proc name(arg: varargs[T]): return_type

    where 'T' is an specific type
]#
proc sumWhileNotNegative(n: varargs[int]): int =
  for i in n:
    if i < 0: return
    result = result + i

echo sumWhileNotNegative(6, 5, 7, 93, -4, 56)
echo sumWhileNotNegative(6, 5, 7, 93, 56)

#[
  Inmutable arguments
    By default, function arguments are inmutable and
    passed copying the value, to make them mutable,
    the `var` keyword is needed:
]#
proc addOne(n: var int) =
  n += 1

var x = 9
addOne(x)

echo x

#[
  The 'discard' statement
    All values needs to be used in Nim, if you call a
    function that returns something and you don't use
    or save it, you'll get a compile error. To prevent
    this, if you don't need that value, then use
    `discard`:
]#
discard sumWhileNotNegative(390, 49, 76)

#[
  Named arguments
    Just like in Python:
]#
proc greet(name: string) =
  echo "Hi ", name, "!"

greet(name = "Miqueas")

#[
  Default arguments
    Just like in Python:
]#
proc welcome(name = "guest") =
  echo "Welcome, ", name, "!"

welcome()
welcome("Miqueas")

#[ Note: if a function returns nothing (`void`) you can
         skip that last part, the compiler will know
         that the function doesn't return a value
]#