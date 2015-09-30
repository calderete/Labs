class Human

	def initialize(name)
		@name = name
		@caffine = 0
		@num_of_coffee = 0
	end

	def alertness
		@caffine
	end

	def has_coffee?
		if @num_of_coffee = 0
			false
		else
			true
		end
	end

	def needs_coffee?
		if @num_of_coffee = 0
			true
		else
			false
		end
	end

	def buy(coffee)
		@coffee = coffee
		@num_of_coffee += 1
	end

	def drink!
		@caffine += 0.34
		
	end


end