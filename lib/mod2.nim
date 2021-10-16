const
  PI* = 3.14159
  NAME* = "Juan"

type Lang* = tuple[
  name: string,
  released_year: int16,
  similar_to: seq[string]
]