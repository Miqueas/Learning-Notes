from strutils import parseint

# Well... Just:
echo "Your name?"
var name = readline(stdin)

echo "Hello ", name, "!"

# Parsing integers:
echo "Age?"
var age = stdin.readline().parseint()

if age < 18:
  echo "You're too young!"
else:
  echo "You need to work and pay your debts"