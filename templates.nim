#[
  Templates is just a way to replace a thing by other thing
]#
template withFile(f: untyped, fn: string, body: untyped) =
  var f: File
  if open(f, fn, fmWrite):
    try:
      body
    finally:
      close(f)
  else:
    quit("cannot open: " & fn)

# This:
withFile(txt, "ex.txt"):
  txt.writeLine("line 1")
  txt.writeLine("line 2")

#[
  Is replaced by:

    var f: File
    if open(f, "ex.txt", fmWrite):
      try:
        f.writeLine("line 1")
        f.writeLine("line 2")
      finally:
        close(f)
    else:
      quit("cannot open: " & "ex.txt")
]#
