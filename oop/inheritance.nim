#[
  Inheritance in Nim is done by inheriting from RootObj
]#
type
  Point = object of RootObj
    x, y: float
  Rect = object of Point
    w, h: int

var
  p = Point(x: 0.983, y: 1.376)
  r = Rect(x: p.x, y: p.y, w: 200, h: 400)

echo p
echo r
echo typeof(p)
echo typeof(r)
echo r of Rect
echo r of Point
echo p of Rect
echo p of Point