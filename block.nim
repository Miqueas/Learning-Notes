#[
  The 'block' statement allow open a new scope without using
  things like functions or loops or conditionals
]#

var x = 1

block my_scope:
  var y = 2
  echo x
  echo y

echo x
# Uncomment the following line to see the error :)
# echo y