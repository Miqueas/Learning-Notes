#[
  Object variants is... Uh... I see it like a way to
  construct data structures dinamically or something
  
  ...

  I think the example can explain it better...
]#

type
  DataKind = enum
    dkInteger,
    dkFloat,
    dkBoolean,
    dkString
  DataType = object
    case kind: DataKind
      of dkInteger: intValue: int
      of dkFloat: floatValue: float
      of dkBoolean: boolValue: bool
      of dkString: stringValue: string

var d = DataType(kind: dkString)
d.stringValue = "Hello, world!"

# Error. Field 'boolValue' doesn't exists!
# Uncomment the following line to see the
# error:
# d.boolValue = true

echo d