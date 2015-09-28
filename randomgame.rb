r = rand(1...100)
loop do
	puts "Guess a number between 1 and 100" 
	guess = gets.chomp.to_i
		
		unless guess == r
			if guess < r 
				puts "Thats to low"
			elsif guess > r 
				puts "Thats to high"
			end
			else 
				puts "You got it!"
				exit
		end
	end
