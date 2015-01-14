name = ''

loop do 
	print "Enter your name: "
	name = gets.chomp
	if name == "John"
		puts "Hi #{name}, we have been expecting you. "
		break
	end
end