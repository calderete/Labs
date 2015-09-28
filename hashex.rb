WINNINING_SET = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]

move_bank = [1, 2, 3, 4]

def win?(move_bank)
	moves = move_bank.sort.combination(3).to_a
	WINNINING_SET.each do |x|
		moves.include?(x)
	end
end

win?(move_bank)