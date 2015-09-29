class CountingPlayer
	def intialize
		@count = 0
	end

	def get_guess
		@count += 1
	end
end