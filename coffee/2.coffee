# Study : 2
# This is a single line comment, which will be removed from generated JS, automatically
###
This is a multiline comment.
Yay.
###
class Person
	# declaring variables. Must assign a value
	# else
	# it will be declared without the var keyword in JS
	id = ''
	age = ''
	gender = ''
	name = ''
	where = ''
	#single line comments seems to be eliminated from the generated JS files
	constructor: (@name) ->
		console.log 'hello '+ name
		document.title = name
	###
	Multi line comments are kept in the generated JS files
	This is cool.
	###
	move: (@where) ->
		console.log @where

new Person('John')

# Make this class a Public class
exports = this
exports.Person = Person