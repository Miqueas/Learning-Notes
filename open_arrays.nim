#[
  Arrays in Nim are fixed-size, so... Imagine you need to write a
  procedure that take an array as argument, due to arrays syntax
  it's so inflexible to write it. So, Open Arrays are here to
  achieve this
]#
proc printElements(a: openArray[string]): void =
  for e in a:
    echo e

var things = [ "foo", "bar", "baz" ]

printElements(things)