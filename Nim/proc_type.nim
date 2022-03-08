#[
  Passing functions to another functions in Nim is really simple
]#
proc greet(name: string): string =
  "Hello, " & name & "!"

proc bye(name: string): string =
  "Goodbye, " & name & "."

proc talk(fn: proc (n: string): string; name = "guest"): void =
  echo fn(name)

talk(greet, "Pablo")
talk(bye, "Maria")
talk(greet)
talk(bye)