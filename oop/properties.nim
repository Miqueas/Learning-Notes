#[
  This pattern can be used when u want to take care how
  an specific object property are used. Very similar to
  Ruby
]#

type Person* = object
  # Cannot be accessed from other modules
  name: string
  age: int

# Setter method
proc `name=`*(self: var Person, value: string) {.inline.} =
  var e = new(ValueError)

  case value:
    of "name":
      e.msg = "Funny, the Person name is 'name'"
      raise e
    of "":
      e.msg = "Person name is empty"
      raise e
    else:
      self.name = value

# Getter method
proc name*(self: var Person): string {.inline.} =
  self.name