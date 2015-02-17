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

echo("string addition")
