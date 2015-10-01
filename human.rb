require './coffee'
require 'pry'

class Human

	def initialize(name)
		@name = name
		@caffine = 0
		@num_of_coffee = 0
		@swigs = 0
	end

	def alertness
		@caffine
	end

	def has_coffee?
		if @num_of_coffee == 0
			false
		else
			true
		end
	end

	def needs_coffee?
		if @num_of_coffee == 0
			true
		else
			false
		end
	end

	def buy(coffee)
		@coffee = coffee
		@num_of_coffee += 1
		@swigs = 0
	end

	def drink!
		@caffine += 0.34
		@swigs += 1
		
	end

	def full_or_empty
	binding.pry
	swigs = @swigs
		is_full = @coffee.cup_check(swigs)
	end


end





