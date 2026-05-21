import strutils, sequtils

func isEmpty(s: string): bool =
  s.strip() == ""

proc hey*(s: string): string =
  if s.strip() == "":
    "Fine. Be that way!"
  elif s.strip().endsWith("?") and s == s.toUpper() and s.any(isAlphaAscii):
    "Calm down, I know what I'm doing!"
  elif s.strip().endsWith("?"):
    "Sure."
  elif not s.any(isAlphaAscii):
    "Whatever."
  elif s == s.toUpper():
    "Whoa, chill out!"
  else:
    "Whatever."
