def say_hello(&block)
	puts "Hello, world"
	name = block.call
	puts "You entered #{name} as your name."
end

say_hello do 
	puts "This is inside of the say_hello block."
	"John"
end