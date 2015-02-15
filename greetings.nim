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


echo("counting to ten: ")
for i in countup(1, 10)  :
  echo($i) # $ turns i to a string

echo("counting to twenty: ")
var i = 1
while i <= 20:
  echo($i)
  inc(i)


echo("Counting down from 10 to 1: ")
for i in countdown(10, 1):
  echo($i)


block myblock:
  echo("entering block")
  while true:
    echo("looping")
    break
  echo("still in block")

block myblock2:
  echo("entering block2")
  while true:
    echo("looping")
    break myblock2 # leaves loop & block
  echo("still in block2") # does not work


while true:
  let x = readLine(stdin)
  if x == "": continue
  echo(x)
