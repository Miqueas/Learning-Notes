# Integers
var
  a: int = 38
  # The underscore is ignored
  b: int = 10_000
  c: int = -487
  d: int # 0 by default

echo a
echo b
echo c
echo d

# Floats
var
  e: float = 2.5
  f: float = -0.6
  g: float = 6e3
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
  o: string = "oOooOoOoo"
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
echo b div a

# Remainder
echo b mod a

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