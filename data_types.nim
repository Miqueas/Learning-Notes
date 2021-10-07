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
  i: char = 'i'
  j: char = 'j'
  # Uncomment to see the error:
  # k: char = 'kl'
  l: char # Nothing or \0 by default (i guess)

echo i
echo j
echo l

# Strings
# In Nim, string are represented with "
var
  m: string = "mMmMmmMm"
  # Ye, I'm a native spanish speaker, and I'm very
  # surprised that this is allowed in Nim
  ñ: string = "ñÑÑññññÑÑñ"
  # Multi line string and also literal
  o: string = """
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
  q: bool = true
  r: bool = false
  s: bool # false by default

echo q
echo r
echo s

# Some operations with data types
# Casting
echo int(e)
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