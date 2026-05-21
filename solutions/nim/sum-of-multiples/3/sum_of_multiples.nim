import std/sequtils

proc sum*(limit: int, factors: openArray[int]): int =
  var valid: seq[int] = @[]
  for factor in factors:
    var mult = 0
    while mult < limit and factor > 0:
      if mult > 0: valid.addUnique(mult)
      mult += factor
  echo "valid.len = " & $valid.len
  if valid.len > 0:
    result += foldl(valid, a + b)
  else:
    result = 0
