#[ Operator ]#

# Ok, operators in Nim can be a weird topic, but... Well, not really.
# Nim has the same operators like other programming languages:
#   + * - / == != >= <= < >
# Etc. But Nim can also have additional operators like:
#   $ & % \ ? ~ @ ! -> => 
# This is cuz in Nim operators are basically functions. That also means
# that existing operators can be overloaded to do more. Let's check some
# examples

# The 'sugar' module has some interesting things like...
import std/sugar

# ... an operator (->) for functions type...
proc callFn(fn: (int, int) -> int; x, y: int) =
  echo fn(x, y)

# ... and and operator (=>) for anonymous functions
callFn((x, y) => x + y, 39, 48)

# As I said, operators in Nim are functions, so the following sentence:
echo `+`(45, 78)
# ... is absolutely valid. Note: you usually don't want to do that, but
# in case you think is really necessary, then always put the operator
# "name" between these: ``

# Ok, now what about making your own operators? Well, that's really easy,
# here's an example:
proc `+`(a, b: string): string {.inline.} =
  a & b

proc `+=`(a: var string, b: string) {.inline.} =
  a &= b

var fullName = "Miqueas"
fullName += " Martínez"

echo "Hello," + " " + "world!"
echo fullName

# I recommend to read the manual for more information:
# https://nim-lang.org/docs/manual.html#lexical-analysis-operators