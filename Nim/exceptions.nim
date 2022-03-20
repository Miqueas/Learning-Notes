#[
  Exceptions are handled like in Python
]#

# The {.raises.} pragma can be used to tell the compiler
# that a function can raise an error
proc greet(name = "guest") {.raises: [ValueError].} =
  if name == "":
    let e = new(ValueError)
    e.msg = "`name` is empty"
    # Only `ref object` can be raised
    # This can be simplified to:
    #   newException(ValueError, "`name` is empty")
    raise e

  echo "Hello, " & name & "!"

try:
  greet("")
except ValueError:
  greet("Jhon")
finally:
  echo "Greet message expected"