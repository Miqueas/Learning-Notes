# Nim supports type inference, so you wouldn't need to
# indicate the type always

# Integers
var
  a = 38'i8 # int8
  # The underscore is ignored
  b = 10_000'u # uint
  c: int = -487
  d: int # 0 by default

echo a
echo b
echo c
echo d

# Floats
var
  # 'float' are always of 64 bits
  e = 2.5'f32 # float32
  f = -0.6'f64 # float64
  g = 6e3
  h: float # 0.0 by default

echo e
echo f
echo g
echo h

# Characters
# In Nim, characters are represented with '
# and must be only one
var
  i = 'i'
  j = 'j'
  # Uncomment to see the error:
  # k: char = 'kl'
  l: char # Nothing or \0 by default (i guess)

echo i
echo j
echo l

# Strings
# In Nim, string are represented with "
var
  m = "mMmMmmMm"
  # Ye, I'm a native spanish speaker, and I'm very
  # surprised that this is allowed in Nim
  ñ = "ñÑÑññññÑÑñ"
  # Multi line string and also literal
  o = """
oOooO \hello\
oOoo "oOoooOooO"
"""
  p: string # Same as for char

echo m
echo ñ
echo o
echo p

# Booleans
var
  q = true
  r = false
  s: bool # false by default

echo q
echo r
echo s

# Some operations with data types
# Type conversion (casting is done using `cast`,
# and is unsafe AFAIK or has less precision, I
# don't remember)
echo int(e) # or `e.int()` or `e.int` or `int e`
echo float(c)

# "Plain" division (i.e. returns an integer)
echo int(b) div int(a)

# Remainder
echo int(b) mod int(a)

# String concatenation
echo ñ & o

# Special characters
echo "hello\tworld\n\n"

# Raw string (i.e. don't need backslash)
echo r"hello\world"

# Boolean operators
echo not true # false
echo true and true # true
echo false or true # true
echo true xor false # true

# Custom types are also allowed and is really easy
type Num = int

var number: Num = -29
echo number