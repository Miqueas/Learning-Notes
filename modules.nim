# Modules are imported like in Python
import strutils

var
  name = "Miqueas Martinez"

echo name.split()
echo name.toupperascii()
echo name.repeat(3)

# Creating a module is easy, but to allow use functions,
# u need to put an asterisk at the end of function names:
proc sqr*(n: int): int =
  result = n * n

# Now about importing path, works in this way:
#[ Folder example:
  .
  ├── myOtherSubdir
  │   ├── fifthFile.nim
  │   └── fourthFile.nim
  ├── mySubdir
  │   └── thirdFile.nim
  ├── firstFile.nim
  └── secondFile.nim

# Importing:

import firstFile
import mySubdir/thirdFile
import myOtherSubdir / [fourthFile, fifthFile]

]#