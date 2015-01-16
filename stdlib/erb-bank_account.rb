require 'erb'

class BankAccount

# treehouse = {
# 	name: 'Treehouse',
# 	location: 'Treehouse Island'
# }

TEMPLATE = <<-TEMPLATE
Bank Account: <%= @name %>
----------------------------------------
<% @transactions.each do |transaction| %>
	Transaction: <%= transaction %>

<% end %>
----------------------------------------

TEMPLATE


	# attr_reader :transactions
	# include Enumerable
	# include Comparable

	# def <=> (other_account)
	# 	self.balance <=> other_account.balance
	# end

	def initialize(name)
		@name = name
		@transactions = []
	end

	def deposit(amount)
		@transactions.push(amount)
	end

	def withdraw(amount)
		@transactions.push(-amount)
	end
	def get_binding
		binding
	end

	def display
		ERB.new(TEMPLATE).result(get_binding)
	end
end

	# def balance
	# 	@transactions.inject(0) { |sum, iterator| sum += iterator }
	# end

	# def each
	# 	@transactions.each{|transaction| yield transaction}
	# end

	# def to_s
	# 	"<#{self.class}:name: #{@name}, balance: #{balance}>"
	# end
# end

account = BankAccount.new("John Stoveld")
account.deposit(100)
account.deposit(100)
account.deposit(100)
account.deposit(100)
account.withdraw(10)
puts account.display

# account2 = BankAccount.new("Kim Dale")
# account2.deposit(200)

# account3 = BankAccount.new("Spiller Dog")
# account3.deposit(400)

# puts "Is account 1 between accounts 2 and 3? #{account1.between?(account2, account3)}"
