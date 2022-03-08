# 'if' statement
var name = "Juan"

if name != "Juan":
  echo name
elif name == "Pablo":
  echo "Yes"
else:
  echo "Unknown"

# 'case' statement
var num = 21

case num:
  of 0:
    echo "Nothing"
  of 1:
    echo "One"
  of 2:
    echo "Two"
  else:
    echo num