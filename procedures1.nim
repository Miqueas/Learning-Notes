# Procedures are just functions, that's it. And are made like:
proc sqr(n: int): int =
  return n * n

proc cube(n: int): int =
  return n * n * n

proc fib(n: int): int =
  if n == 0 or n == 1:
    return n
  else:
    return fib(n - 1) + fib(n - 2)

# And used like:
echo sqr(6)
echo cube(6)
echo fib(6)

# Nim also support a thing called "Uniform Function Call Syntax",
# honestly idk what the actual heck is that, but bassically allows
# to call a common function like a method, passing the "object" as
# first argument:
echo 6.sqr()
echo 6.cube()
echo 6.fib()

# Nim also has a thing called "result variable", is used instead of
# 'return'. That means, you just push the final result of your
# function in that variable and then Nim known it and returns it:
proc dup(s: string, t: int): string =
  for i in 1 .. t:
    # &= is like += but concatenates strings instead
    result &= s

echo "ñ".dup(29)

# And, finally, like in C, you can do forward declaration
proc mult(x, y: int): int

echo 6.mult(12)

proc mult(x, y: int): int =
  result = x * y