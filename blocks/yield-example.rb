def say_hello(&block)
	puts "Hello, world"
	yield 
	yield
	puts "I said hello."
end

say_hello do 
	puts "I am inside of the say_hello block."
end
