#[
  Exceptions are handled like in Python
]#

proc greet(name: string = "guest") =
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