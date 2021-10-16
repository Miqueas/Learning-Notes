type Person* = ref object
  # Cannot be accessed from other modules
  name: string
  age: int

# Setter method
proc `name=`*(self: Person, value: string) {.inline.} =
  self.name = value

# Getter method
proc name*(self: Person): string {.inline.} =
  self.name