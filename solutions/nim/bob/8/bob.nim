import strutils, sequtils

func isEmpty(s: string): bool =
  s.strip() == ""

func hasWords(s: string): bool =
  s.strip().any(isAlphaAscii)

func isYelling(s: string): bool =
  s == s.toUpper() and s.hasWords()

func isQuestion(s: string): bool =
  s.strip().endsWith("?")

proc hey*(s: string): string =
  if s.isEmpty():
    "Fine. Be that way!"
  elif s.isQuestion() and s.isYelling():
    "Calm down, I know what I'm doing!"
  elif s.isQuestion():
    "Sure."
  elif not s.hasWords():
    "Whatever."
  elif s == s.toUpper():
    "Whoa, chill out!"
  else:
    "Whatever."
