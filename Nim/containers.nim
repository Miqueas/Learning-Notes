#[ Containers ]#

# Arrays: homogeneous and fixed length containers, indexing starts at 0
#         and the size must be known at compile time
var
  nums1: array[5, int] = [ 2, 4, 6, 8, 10 ]
  # This is valid too
  # nums2 is `array[5, int]`
  nums2 = [ 1, 3, 5, 7, 9 ]
  strlist = [ "hello", "world" ]
  # An array that can be indexed from 0 to 4, this is also valid
  # using Enums instead of integers literal
  arr: array[0..4, int]

arr = nums1

echo nums1
echo nums2
echo strlist
echo arr

# Sequences: like arrays, but has a dynamic size
var
  nums3: seq[int]
  seqliteral = @[ "abc", "def", "ghi" ]
  # Another way to init an empty sequence
  myname = newSeq[string]()

myname.add("Miqueas")
myname.add("Martinez")

for i in 0 .. 20:
  if i mod 2 == 0:
    nums3.add(i)

echo nums3
echo seqliteral
echo myname

# Tuples: like arrays (fixed size), but data is heterogeneous and
#         uses an optional key-value pairs
var
  cat = ("Bingus", true)
  me = (
    name: "Miqueas",
    is_nerd: true,
    likes: [ "coding", "anime", "music" ]
  )
  # Declaring is done in this way
  website: tuple[name: string, url: string]
  # Or this way (for tuples without keys)
  dog: (string, bool)

dog[0] = "E"
dog[1] = false

website.name = "Github"
website.url = "https://github.com/"

echo cat
echo me
echo website
echo dog

#[ Indexing and slicing containers ]#

# Indexing starts from 0, use ^1 to reverse counting (^1 is the
# last element)
echo nums1[^1]
echo seqliteral[2]

# Slicing works with the 'for' syntax: start .. stop or start ..< stop
echo nums3[3 .. 7]
echo nums3[5 ..< 10]