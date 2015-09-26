require 'pry'

board = (1..9).to_a
#counter = 0
pick = 0

def show_board(board)
	 puts   "#{board[0]}  |  #{board[1]}  |  #{board[2]}"
	 puts   "#{board[3]}  |  #{board[4]}  |  #{board[5]}"
	 puts   "#{board[6]}  |  #{board[7]}  |  #{board[8]}"
end
show_board(board)

WINNINING_SET = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]
PLAYER_1_MARK = "X"
PLAYER_2_MARK = "O"




def game_over(move_bank1, move_bank2)
	turn_count = move_bank1.length + move_bank2.length
	turn_count == 9		
end

#def update_board(board, current_mark, pick)
#	board.push(pick -1) #= current_mark
#	show_board(board)
#	puts board
#end

def update_board(board, current_mark, pick)
	board[pick -1] = current_mark
	show_board(board)
	#puts board
end

def take_turn(current_player, board, current_mark, counter, move_bank1, move_bank2, player1)
	puts "#{current_player}Make your pick!"
	pick = gets.chomp.to_i
	update_board(board, current_mark, pick)
	if current_player == player1
		move_bank1.push(pick)
	else
		move_bank2.push(pick)
	end
	counter += 1
end

#def update_move_bank(current_player, move_bank1, move_bank2, pick, player1)
#	move = pick.to_i
#	if current_player = player1
#		move_bank1.push(move)
#	else
#		move_bank2.push(move)
#	end
#end

def get_player_name(player)
	puts player + ( "Please enter your name: ")
	gets.chomp
end

def tictactoe(board)
	player1 = get_player_name("Player1")
	player2 = get_player_name("Player2")
	move_bank1 = []
	move_bank2 = []
	counter = 0
	pick = 0
	current_player = player2
	current_mark = PLAYER_2_MARK
	until game_over(move_bank1, move_bank2)
		if current_player == player2
			current_player = player1
			current_mark = PLAYER_1_MARK
			#current_move_bank = move_bank1
			take_turn(current_player, board, current_mark, counter, move_bank1, move_bank2, player1)
			#update_move_bank(current_player, move_bank1, move_bank2, pick, player1)
			puts move_bank1
			
		else
			current_player = player2
			current_mark = PLAYER_2_MARK
			#current_move_bank = move_bank2
			take_turn(current_player, board, current_mark, counter, move_bank1, move_bank2, player1)
			#update_move_bank(current_player, move_bank1, move_bank2, pick, player2)
			puts move_bank2
			
			
		end
	end
end

tictactoe(board)










