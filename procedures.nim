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

echo sumTillNegative()
echo sumTillNegative(3,4,5)
echo sumTillNegative(3,4,-1)
