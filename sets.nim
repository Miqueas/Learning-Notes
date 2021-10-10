#[
  A set is just that, a collection of elements, except for:
    They can be only ordinal types of a certain size:
      int8 - int16
      uint8/byte - uint16
      char
      enum
    Or equivalents.
]#
type CharSet = set[char]
# {} is the set literal
var alphabet: CharSet = { 'a' .. 'z', '0' .. '9' }

echo alphabet

#[
  The Nim Tutorial part 1 also talks about something called
  "Bit Fields" but I still don't understand it at all
]#