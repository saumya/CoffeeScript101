# Study : 5 : Advanced
# coffee --compile --output js/ coffee/
console.log 'CoffeeScript : 5 : Start'

# Advanced :
#
# contentext ie; this , is bound to the class if we define a function with a fatArrow =>
# FatArraow =>
# NormalArrow ->
# => ensures the function executes in the context that its declared not like 
# the normal behaviour of the javascript functions, which execute in the context of where
# its invoked.

# embeding javascript inside coffeescript, this is done with by starting with ` and ending with `
console.log 'Entering javascript code below'
`
var j1 = function(){
	console.log('Pure JS');
	};
var j2 = function(xName){
	console.log('Hello '+xName);
	};
j1();
`
console.log 'Back to CoffeeScript'
j2 'World'

# Below comments are added to check for the auto matic build by CAKE
# comment to check it watch-task is working
# its working!
# Happy Cake


console.log 'CoffeeScript : 5 : End'