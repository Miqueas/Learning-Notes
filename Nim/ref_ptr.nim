#[
  Nim has support for references and pointer. The differences between
  these are simple: references are traced by the garbage collector,
  but pointers are untraced. Any reference/pointer that points to
  nothing has the 'nil' value. To create a reference/pointer, use the
  'ref'/'ptr' keyword. Pointers are unsafe and references are safe.

  NOTE: pointers/references are rarely used/needed in Nim, so please
        try to avoid them (except if you REALLY need them).
]#
type
  IntRef = ref int
  IntPtr = ptr int

var
  i: int = 7
  # Create a new reference with `new`. Either `new(<type>)`
  # or `new(<variableName>)` is valid
  ir: IntRef = new(int)
  # Create a new pointer with `alloc`. Note that type conversion
  # with pointers/references are always done with `cast`
  ip: IntPtr = cast[IntPtr](alloc(sizeof(int)))

# [] is to de-reference, ye is a weird syntax
ir[] = i * i
ip[] = i * i * i

echo i
echo ir[]
echo ip[]

if ip != nil:
  # pointers needs to be manually de-allocated
  dealloc(ip)