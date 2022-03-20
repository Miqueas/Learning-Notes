# 'for' loop
# inclusive
for i in 1 .. 10:
  echo i

# exclusive
for i in 1 ..< 10:
  echo i

var n: int

# 'while' loop
while n < 10:
  n += 1
  echo n

var x: int

# 'break' and 'continue'
for i in 0 .. 9:
  if i == 5:
    continue
  echo x

while x < 10:
  echo x
  x += 1
  if x == 7:
    break
