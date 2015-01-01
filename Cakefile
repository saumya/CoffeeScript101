# My build script
# version 1.0.0
# called using cake

fs = require 'fs'
{print} = require 'sys'
{spawn} = require 'child_process'

# defining functions to run for the tasks
oneTask= ->
	console.log 'Running:oneTask'
twoTask= ->
	console.log 'Running:twoTask'
compileToJS= ->
	# currently its same as running
	# coffee --compile --output output/ inputFolder/
	# But we could make this do other things as well
	console.log 'Running:Compile to Javascript'
	console.log 'Takes all files from coffee/ folder and creates respective Javascript files in js/ folder'
	coffee = spawn 'coffee', ['-c', '-o', 'js', 'coffee']
	coffee.stderr.on 'data', (data) ->
		process.stderr.write data.toString()
	coffee.stdout.on 'data', (data) ->
		print data.toString()
	coffee.on 'exit', (code) ->
		callback?() if code is 0
# defining Tasks
task 'one', 'This is a simple example task', ->
	oneTask()
task 'second', 'Aonther Test task', ->
	twoTask()
	oneTask()
# compiles and builds the application
task 'build', 'Build Javascript from CoffeeScript', ->
	compileToJS()
# keeps an eye on coffee/ folder and if anything changes, it compiles to js/ folder
task 'watch', 'Watch coffee/ for changes', ->
    coffee = spawn 'coffee', ['-w', '-c', '-o', 'js', 'coffee']
    coffee.stderr.on 'data', (data) ->
      process.stderr.write data.toString()
    coffee.stdout.on 'data', (data) ->
      print data.toString()
# opens the HTML page and watches the changes
# child tasks are called with 'invoke' as below
task 'open', 'Open home.html', ->
  # First open, then watch
  spawn 'open', ['home.html']
  invoke 'watch'


# end Cake
