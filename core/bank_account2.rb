class BankAccount
	attr_reader :transactions
	include Enumerable
	include Comparable

	def <=> (other_account)
		self.balance <=> other_account.balance
	end

	def initialize(name)
		@name = name
		@balance = 0
		@transactions = []
	end

	def deposit(amount)
		@transactions.push(amount)
	end

	def withdraw(amount)
		@transactions.push(-amount)
	end

	def balance
		@transactions.inject(0) { |sum, iterator| sum += iterator }
	end

	def each
		@transactions.each{|transaction| yield transaction}
	end

	def to_s
		"<#{self.class}:name: #{@name}, balance: #{balance}>"
	end
end

account1 = BankAccount.new("John Stoveld")
account1.deposit(100)

account2 = BankAccount.new("Kim Dale")
account2.deposit(200)

account3 = BankAccount.new("Spiller Dog")
account3.deposit(400)

puts "Is account 1 between accounts 2 and 3? #{account1.between?(account2, account3)}"
