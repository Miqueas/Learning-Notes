# Variables are declared with 'var'
var name = "Miqueas"

# This is also allowed with 'let' and 'const' (i guess)
var
  x = 1
  y = 2
  z = 3

# 'let' is used to make a inmutable variable and
# don't need to be known at compile time (i.e. at
# run-time, using a function or something).but
# after is set, cannot be changed
let number = 29

# 'const'... well, is for constants duh. they need
# to be known at compile time
const cat = true

# An important note about Nim variable names is...
# Nim is case- and underscore-insensitive, so...
# This:
var nim_is_awesome = true
# Is the same as this (and so it'll throw an error,
# uncomment the following line to see it):
# var nimIsAwesome = true

# But this, is another thing (note the first
# character, which is actually case-sensitive):
var Nimisawesome = true

echo name
echo x
echo y
echo z
echo number
echo cat
echo nim_is_awesome
echo Nimisawesome