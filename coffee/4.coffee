# Study : 4 : Objects
console.log 'CoffeeScript : 4 : Start'
# Simple Object
author = {name:"Ian",age:26}
# No Commas necessary if defined in different lines
author2 = {
	name:"Joe"
	age:28
}
# No Curly braces is also valid
author3 = name:"Jennifer",age:25
author4 = 
	name:"Mack"
	age:30
# No Curly braces but indentation example for nested 
author5 = 
	name: "John"
	age: 32
	likes:
		color: "red"
		food: "chinese"
	dislikes:
		color: "black"
		food: "nothing"
# Iterating over Object is with "of" keyword, unlike "in" of "Array"
# tip : item of Object , while, item in Array
# "of" takes 2 params, 'key' and 'value'
for k,v of author5
	console.log "Key is:"+k+' :value is:'+v

# String interpolation with #{} inside a doubleQuoted string "Hello #{world}"
# any valid code can go inside #{}
console.log "author name is #{author.name} and age is #{author['age']}"
console.log "Addition example result is #{1+2+3}"
# nested Doublequotes are also handled
console.log "Lets be #{"happy".toUpperCase()}"
###
Functions
###
sayHelloTo = (name) ->
	return "Hello, #{name}"
sayHello = ->
	return "Hello"
###
Switch statements : no 'break' call in the case
Swith - when - else
###
a1 = 'India'
switch a1
	when 'Europe'
		console.log 'Its not Inida'
	when 'India'
		console.log 'Its India'
	else
		console.log 'Not known'

###
Classes
###
class Nation
	message: ->
		console.log "Hello World"
	greet: (who) ->
		console.log "Hello #{who}"
# properties are accessed with @
# other methods are accessed with @
# Actually '@something' is same as 'this.something' 
class Car
	# name: "No Name"
	getName: ->
		s= "This is #{@name}"
		console.log s
		s
	getDetails: ->
		console.log "The details are #{@getName()}"

car = new Car()
car.name = "Audi"
#car.getName()
car.getDetails()

# the prototype of an object is accessed by '::' operator
# lets add a new method to JS Object
Object::sayMyName = ->
	console.log 'My Name is Object'

o1 = new Object()
o1.sayMyName()

# Class and Constructor
# If we directly add @ before a parameter, it automatically becomes the property of the Object
# The prameter @social is doing double job, defining a property and as an aguement
class Animal
	constructor: (@social,name="animal",age=0) ->
		console.log "Animal:Constructor"
		console.log (@social+':'+name+':'+age)
		@name = name
		@age = age
	describe: ->
		s = "Animal:This is a #{@social} Animal with name #{@name} and age #{@age}."
		console.log s
	# static property
	@JUNGLE_NAME = "Himalayas"
	# static method
	@showInside = (toWhom) ->
		console.log "Hello #{toWhom} from the jungle #{Animal.JUNGLE_NAME}."
		

animal1 = new Animal("social");
animal2 = new Animal("LSocial","Lion",3);
animal1.describe();
animal2.describe();
# Static method call
Animal.showInside('Saumya');

# Inheritence 

class Tiger extends Animal
	constructor: (@social,name="animal",age=0) ->
		console.log "Tiger:Constructor"
		super 
	describe: ->
		super
		s = 'Tiger:TIGER is born'
		console.log s
# Testing inheritace
t1 = new Tiger("XSocial",'Tiger',4)
t1.describe()





console.log 'CoffeeScript : 4 : End'