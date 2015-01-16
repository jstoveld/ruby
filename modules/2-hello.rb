
module SayHello
	def say_hello
		puts "Hello #{@name}"
	end
end

class Hello
	include SayHello 


	def initialize(name)
		@name = name
	end
end


hello = Hello.new("John")
#hello.extend SayHello Not Needed when using include on L9#


hello.say_hello



#class exending makes this available to modules external to class
#include makes method available to class instances