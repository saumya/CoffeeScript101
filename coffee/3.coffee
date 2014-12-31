# Study : 3
###
Generic Coffee file
This is not a class file, but just a CoffeeScript file
###
# defining Local varibles
a = 'good'
b = 'happy'
c = 'win'

console.log this

# defining Global variables
exports = this;
exports.myA = a;
# now make some objects of the previous classes done in 1.coffee and 2.coffee
person = new Person('Jackson');
animal = new Animal('Tiger');
person.move 'Mumbai'

# control statements
if true==true
	console.log 'This is true'
	console.log 'Awesome!'
# NewInCoffee : the unless statement , which is kind of negative-if
unless true==true
	console.log 'What?! true!=true'
else
	console.log 'The unless stement'
# NewInCoffee : new way of writing the control statements
# NewInCoffee : the comparision operators such as == and != compiles to === and !== in JS
console.log 'Yeah! This is if statement' if true==true
console.log 'Unless statement' unless true!=true
# NewInCoffee : there are 'is','isnt','and','or','not' 
console.log 'a is good' if a is 'good'
console.log 'b is not happy now with Unless and isnt' unless b isnt 'happy'
# NewInCoffee : alias for true is 'yes' or 'on'
# NewInCoffee : alias for false is 'no' or 'off'
myBool = true
console.log myBool if myBool is yes
console.log 'myBool='+myBool if myBool isnt off
console.log 'myBool='+myBool unless myBool is no

# Arrays
myA1 = [
	"Happy"
	"Festive"
	"Joy"
]
# NewInCoffee : trailing commas, just get removed from the compiled JS
myA2  = ['Happy','New','Year','Good','Just a comma at my end',]
# NewInCoffee : ranges , which compiles to Arrays in JS
myA3 = [0..9]
myA4 = [10..1]
# Two dots make the last number inclusinve & Three dots make exclusive
myA5 = [1...9]
# making the range with variables
startRange = 5
endRange = 15
myA6 = [startRange...endRange] # generates a little complex JS output, but just think out the JS for fun

# Loop
for loopIterator in myA1
	console.log loopIterator
# Loop in one line
console.log loopIterator1 for loopIterator1 in myA1
# Loop and using it to manipulate
animals = ["cat","dog","cow","elephant"]
pluralAnimals = for animal in animals
	animal+'s'
console.log pluralAnimals
# Loop in a single line
pluralAnimals1 = (animal+'s' for animal in animals)
console.log pluralAnimals1
# Loop with a 2nd arguement and a check
for animal, animalIndex in animals when animal isnt "dog"
		console.log animalIndex
		console.log animal
# Loop and using 'in' as a condition
if 5 in myA3
	console.log 'The Array has got the value!'


console.log 'CoffeeScript : 3 : End'
































