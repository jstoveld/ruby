require 'ostruct'
require 'optparse'
require 'open-uri'

class MyParser
	def self.parse(args)
		options = OpenStruct.new
		opts = OptionParser.new do |opts|
			opts.banner = "usage: url"

			opts.on('-u', '--url URL', 'Fetches the given url') do |url|
				options.url = url
			end
		end

		begin
			opts.parse!(args)
		rescue Exeption => e
			puts "Exeption encoutered: #{e}"
			puts opts
			exit 1
		end

		options

	end
end


options = MyParser.parse(ARGV)
puts options.inspect

if options.url
	puts open(options.url).read
end
