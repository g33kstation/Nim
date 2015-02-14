# this is a comment
echo("What's your name? ")
var name: string = readLine(stdin)

case name
of "":
  echo("Poor soul, you lost your name?")
of "name":
  echo("Very funny, your name is name.")
of "Dave", "Frank":
  echo("Cool name!")
else:
  echo("Hi, ", name, "!")


from strutils import parseInt

echo("A number please: ")
let n = parseInt(readLine(stdin))
case n
of 0..2, 4..7: echo("n in the set: {0,1,2,3,4,5,6,7}")
of 3,8: echo("n is 3 or 8")
else: discard


echo("what's your nick? ")
var nick = readLine(stdin)
while nick == "":
  echo("plz tell me your nick: ")
  nick = readLine(stdin)
