#[
  Exceptions are handled like in Python
]#

# The {.raises.} pragma can be used to tell the compiler
# that a function can raise an error
proc greet(name: string = "guest") {.raises: [ValueError].} =
  if name == "":
    let e = new(ValueError)
    e.msg = "`name` is empty"
    # Only `ref object` can be raised
    raise e

  echo "Hello, " & name & "!"

try:
  greet("")
except ValueError:
  greet("Jhon")
finally:
  echo "Greet message expected"