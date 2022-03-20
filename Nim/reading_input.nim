import strutils

# Well... Just:
echo "Your name?"
var name = readLine(stdin)

echo "Hello ", name, "!"

# Parsing integers:
echo "Age?"
var age = parseInt(readLine(stdin))

if age < 18:
  echo "You're too young!"
else:
  echo "You need to work and pay your debts"