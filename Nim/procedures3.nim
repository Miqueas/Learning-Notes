#[
  Functions overloading
    Like in C++, Nim allows to create overloaded
    functions, by example:
]#
proc toString(x: int): string =
  result =
    # Ye, this is allowed
    if x > 0: "greater than zero"
    elif x < 0: "less than zero"
    else: "zero"

proc toString(x: bool): string =
  result = 
    if x: "yes"
    else: "no"
  

echo toString(2)
echo toString(-4)
echo toString(0)
echo toString(true)
echo toString(false)

# Nim also has `func`, which is just a `proc` with the
# {.noSideEffect.} pragma (yes, is just syntax sugar):

func add(x, y: int): int {.inline.} =
  x + y

echo add(937, 239)