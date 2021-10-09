#[
  A subrange type is a range of values, but only can contain
  the values that are in the range. By example:
]#

# Let's define first an enum
type WeekDay = enum
  MONDAY,
  TUESDAY,
  WEDNESDAY,
  THURSDAY,
  FRIDAY,
  SATURDAY,
  SUNDAY

# Now define our subrange type
type WorkDay = range[MONDAY .. FRIDAY]

# And now we have an error, cuz `WeekDay.SUNDAY` isn't a `WorkDay`
var e: WorkDay = SUNDAY

echo e