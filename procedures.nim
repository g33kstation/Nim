proc yes(question: string): bool =
  echo(question, "(y/n)")
  while true:
    case readLine(stdin)
    of "y": return true
    of "n": return false
    else: echo("please: y or n")

if yes("should i delete all files?"):
  echo("can't do that")
else:
  echo("you know what the problem is")


proc sumTillNegative(x: varargs[int]):int =
  for i in x:
    if i < 0:
      return
    result = result + i

# echo sumTillNegative()
# echo sumTillNegative(3,4,5)
# echo sumTillNegative(3,4,-1)

proc printSeq(s: seq, nprinted: int = -1): int =
  var nprinted = if nprinted == -1: s.len else: min(nprinted, s.len)
  for i in 0 .. <nprinted:
    echo s[i]

# numeric is a seq
# var numeric = @[9,9]
# echo numeric.len
# echo printSeq(numeric)

proc divmod(a,b: int; res, remainder: var int) =
  res = a div b # integer division
  remainder = a mod b # integer modulo operation

var
  x, y: int

divmod(8,5,x,y)
echo x
echo y

# ignoring the proc returned value
discard yes("may i ask a pointless question?")

# return value can be ignored implicitly
proc p(x, y: int): int {.discardable.} =
  return x + y

echo p(3,4)
