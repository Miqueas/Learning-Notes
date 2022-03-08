#[
  Variadic arguments
    This type of functions in Nim usesthe syntax:

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
    By default, function arguments are inmutable,
    to make it mutable, the 'var' keyword is needed:
]#
proc addOne(n: var int): void =
  n += 1

var x = 9
addOne(x)

echo x

#[
  The 'discard' statement
    All values needs to be used in Nim, calling a function
    that returns something and not using the returned value
    will throw an error. To prevent this, if you don't need
    that value, then use 'discard':
]#
discard sumWhileNotNegative(390, 49, 76)

#[
  Named arguments
    Just like Python:
]#
proc greet(name: string): void =
  echo "Hi ", name, "!"

greet(name = "Miqueas")

#[
  Default arguments
    Just like in Python:
]#
proc welcome(name = "guest"): void =
  echo "Welcome, ", name, "!"

welcome()
welcome("Miqueas")