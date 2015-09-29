class SmartPlayer

	def initialize
		@guess = 50
	end

	def get_guess(number)
		binding.pry
		x = number 
		if @guess > number
			@guess = @guess / 2
		elsif @guess < number
			@guess = @guess / 2 + @guess
		else
			puts "Number Found" 
		end
		@guess   
	end
end

