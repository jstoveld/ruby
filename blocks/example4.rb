def header(&block)
	puts "This is our header"
	block.call
	puts "This is our footer."
rescue 
	puts "This is where we would rescue an error."
ensure
	puts "This is our ensure block."
end

header do
	puts "This is the body of the block."	
	raise "This is an error."
end