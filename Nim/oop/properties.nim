#[
  Encapsulation
]#

type Person* = object
  # Cannot be accessed from other modules
  name: string
  age: int

# Setter method
proc `name=`*(self: var Person, value: string) {.inline.} =
  case value:
    of "name":
      raise newException(ValueError, "Funny, the Person name is 'name'")
    of "":
      raise newException(ValueError, "Person name is empty")
    else:
      self.name = value

# Getter method
proc name*(self: var Person): string {.inline.} =
  self.name