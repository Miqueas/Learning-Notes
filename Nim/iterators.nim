#[
  Iterators are like procedures, except that they can be called
  only from loops, doesn't have a implicit 'result' variable,
  cannot have a 'return' statement, cannot be forward declared
  and don't support recursion. Here's a simple example:
]#
iterator count_up(a, b: int): int =
  var res = a
  while res <= b:
    yield res
    inc(res)

for i in count_up(0, 9):
  echo i