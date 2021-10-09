#[ 
  Enums, integers, char, bool and subranges are also know as
  "ordinal types". I'm not sure how to explain this but... I
  see these types as "number-based types" or "enumerable
  types" or something. Anyway, ordinal types has few special
  operations:
]#
type DayPhase = enum DAY, NIGHT

var
  c = 'h'
  i = 29

echo pred(c)
# Bro this proc name is seriously hilarous
echo succ(i)
echo ord(NIGHT)

# See the Nim tutorial 1 for more details (in section
# "Ordinal Types")