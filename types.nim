import typetraits


var xx = 12
echo xx.type.name

echo("char comparison")
var x = 'a'
echo x
echo x.type.name
echo x <= 'b'

echo("from char to string")
var y = $(x)
echo y
echo y.type.name

echo("ordinal value of char")
var z = ord('1')
echo z
echo z.type.name

echo("from integer to char")
var zz = chr(47)
echo zz
echo zz.type.name

echo("string concatenation")
var a = "pitt"
var b = "baccardi"
echo a.type.name

echo a&b

from strutils import split
echo("string split")

let p = "2012-11-20T22:08:08.398990"
let separators = {' ', '-', ':', 'T'}
for number in split(p, separators):
  writeln(stdout, number)

echo "Tuples"
var
  child: tuple[name: string, age: int]
  today: tuple[sun: string, temp: float]
  person: tuple[name: string, sex: char, number: int]


child = (name: "Rudiger", age: 2)
today.sun = "Overcast"
today.temp = 70.1
person = (name: "patt", sex: 'm', number: 111)

echo "person sex attribute type"
echo person.sex.type.name

echo "person sex"
echo person.sex

echo "person all attributes"
var g = person
echo g

echo "sequences"
var
  drinks: seq[string]
  drinkz: seq[string]
  w: string

w = "wine"
drinks = @["water","juice","chocolate"]
drinkz = @["water1","juice2","chocolate3"]

echo drinks.type.name
echo drinks[1]

# takes several sequeces items & return a new one
from sequtils import concat, filter
echo concat(drinks, drinkz)

var numbers = @[1,2,3,4,5,6,7,8,9,10]
for n in filter(numbers, proc (x: int): bool = x mod 2 == 0): echo($n)


echo "defining types"

type
  Name = string # a type alias give you a new type that is interchangable
  Age = int
  Person = tuple[name: Name, age: Age]
  Human = tuple
    fieldOne: string
    secondField: int

var
  john: Person = (name: "john", age: 17)
  newage: int = 18

john.age = newage # int & Age are synonyms
