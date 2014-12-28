class Animal
	constructor: (@name) ->
		console.log ('hello '+ name)
		document.title = name;

	move: (@where) ->
		console.log @where

new Animal('Elephant')

#Make this a public class
exports = this
exports.Animal = Animal;