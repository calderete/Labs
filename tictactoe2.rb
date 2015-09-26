board = (1..9).to_a

def show_board(board)
	 puts   "#{board[0]}  |  #{board[1]}  |  #{board[2]}"
	 puts   "#{board[3]}  |  #{board[4]}  |  #{board[5]}"
	 puts   "#{board[6]}  |  #{board[7]}  |  #{board[8]}"
end
show_board(board)

WINNINING_SET = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
PLAYER_1_MARK = "X"
PLAYER_2_MARK = "O"

def game_over
end

def update_board(board, current_mark, pick)
	board[pick -1] = current_mark
	show_board(board)
end

def take_turn(current_player, board, current_mark)
	puts "#{current_player}Make your pick!"
	pick = gets.chomp.to_i
	update_board(board, current_mark, pick)
end

def get_player_name(player)
	puts player + ( "Please enter your name: ")
	gets.chomp
end

def tictactoe(board)
	player1 = get_player_name("Player1")
	player2 = get_player_name("Player2")
	current_player = player2
	current_mark = PLAYER_2_MARK
	until game_over
		if current_player == player2
			current_player = player1
			current_mark = PLAYER_1_MARK
			take_turn(current_player, board, current_mark)
			#update_board(board, current_mark, pick)
		else
			current_player = player2
			current_mark = PLAYER_2_MARK
			take_turn(current_player, board, current_mark)
			#update_board(board, current_mark, pick)
			
		end
	end
end

tictactoe(board)










