#[
  Distinct types are types that don't have a relationship with
  their base type. By example:
]#
type
  Dollar = distinct int
  Euro = distinct int

var
  d: Dollar
  e: Euro

# Error!
echo d + 10
echo e