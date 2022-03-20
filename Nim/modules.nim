# Importing modules is similar to python
import strutils

var name = "Miqueas"

# But qualifier aren't really needed
echo name.split()
echo name.toupperascii()
echo name.repeat(3)

# To make things "public", u need to put an asterisk (*)
# after the name
proc sqr*(n: int): int = n * n

# Another example
type MyObject* = object
  myInt: int
  myString: string

# Importing from an specific file in a path
import lib/mod1

hello()

# Importing specific symbols
from lib/mod2 import Lang

var nim: Lang = (
  name: "Lua",
  releaseYear: 2008'i16,
  similarTo: @[ "Python", "Rust", "C++" ]
)

echo nim

# To enforce use a qualifier in modules (like in
# Python), do this
from lib/mod2 import nil

echo mod2.PI

# Excluding symbols
import lib/mod3 except Person

var
  p = Point(x: 3.1, y: 4.7)
  r = Rect(x: p.x, y: p.y, w: 800, h: 600)

echo p
echo r

#[
  About ambiguous names in modules, please refer to the Nim Tutorial 1
  in the "Modules" section, that explains it very well and using
  examples
]#