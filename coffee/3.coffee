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