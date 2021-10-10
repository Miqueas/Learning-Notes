#[
  An object is an structure where we can pack things. In Nim, objects
  always has a constructor. By example: object `Foo` has a constructor
  `Foo(field: value, ...)`.
]#
type
  Person = object
    name: string
    age: uint16

# Initialize fields are optional and in that case, are initialized
# with their default value. Also, the order of the fields doesn't
# matter
var me = Person(name: "Miqueas", age: 21)

echo me.name
echo me.age