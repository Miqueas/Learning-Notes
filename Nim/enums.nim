# Nim supports Enums and is simple to make it
type
  TimeFmt = enum F12_HOURS, F24_HOURS
  Direction = enum NORTH, EAST, SOUTH, WEST

# and that's it!
var
  where = Direction.NORTH
  # or just:
  fmt = F12_HOURS

echo where
echo fmt

# To see the numerical value of an enum, you need
# use the ord() proc (I'll explain this in other file):
echo "TimeFmt.F12_HOURS: ", ord(TimeFmt.F12_HOURS)
echo "TimeFmt.F24_HOURS: ", ord(TimeFmt.F24_HOURS)

echo "Direction.NORTH: ", ord(Direction.NORTH)
echo "Direction.EAST:  ", ord(Direction.EAST)
echo "Direction.SOUTH: ", ord(Direction.SOUTH)
echo "Direction.WEST:  ", ord(Direction.WEST)