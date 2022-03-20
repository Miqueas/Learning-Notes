#[
  Passing functions to another functions in Nim is really simple
]#
proc greet(name: string): string {.inline.} =
  "Hello, " & name & "!"

proc bye(name: string): string {.inline.} =
  "Goodbye, " & name & "."

proc talk(fn: proc (n: string): string {.inline.}, name = "guest") =
  echo fn(name)

talk(greet, "Pablo")
talk(bye, "Maria")
talk(greet)
talk(bye)