#[
  Nim has support for references and pointer. The differences between
  these are simple: references are traced by the garbage collector,
  but pointers are untraced. Any reference/pointer that points to
  nothing has the 'nil' value. To create a reference/pointer, use the
  'ref'/'ptr' keyword. Pointers are unsafe and references are safe
]#
type
  IntRef = ref int
  IntPtr = ptr int

var
  i: int = 7
  ir: IntRef = new(int)
  # you may want to use `addr` to get the address of
  # a memory location
  # use cast[T]() instead of T() to prevent an error
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