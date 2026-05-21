import std/sequtils

proc sum*(limit: int, factors: openArray[int]): int =
  result = 0
  var valid: seq[int] = @[]
  for factor in factors:
    var mult = 0
    while mult < limit:
      if mult > 0: valid.addUnique(mult)
      mult += factor
  if valid.len > 0:
    result += foldl(valid, a + b)
