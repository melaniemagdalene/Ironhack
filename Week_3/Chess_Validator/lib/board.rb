require 'pry'

class Board
	def initialize(board_array)
		@board = board_array
		@move_counter = 0
	end

	def can_move?(start_x, start_y, end_x, end_y)
		piece_to_move = @board[start_y][start_x]
		@move_counter += 1

		if !piece_to_move
			false
		elsif not_moved(start_x, start_y, end_x, end_y)
			false
		elsif !on_the_board?(start_x, start_y, end_x, end_y)
			false
		elsif piece_to_move.can_move?(end_x, end_y) && 
					not_same_color?(piece_to_move, end_x, end_y)
			true
		else
			false
		end
	end

	def print_board
		table = {
			"Rook" => "R",
			"Knight" => "Kn",
			"Bishop" => "B",
			"Queen" => "Q",
			"King" => "K",
			"WhitePawn" => "Wp",
			"BlackPawn" => "Bp"
		}

		board = ""
		@board.each_with_index do | row, index | 
			if !row.any? && index != 0
				8.times do
					board += "|  _  "
				end
				board += "\n"
			else
				row.each do | col |
					if !col.nil? 
						board += "| #{table[col.class.to_s]}   "
					end
				end
				board += "\n"
			end
		end
		board
	end

	private

		def on_the_board?(start_x, start_y, end_x, end_y)
			start_x <= 8 && start_y <= 8 &&
			end_x <= 8 && end_y <= 8
		end

		def start_has_piece?(piece_to_move)
			!piece_to_move.nil?
		end

		def not_moved(start_x, start_y, end_x, end_y)
			start_x == end_x && start_y == end_y
		end

		def not_same_color?(piece_to_move, end_x, end_y)
			opposing_piece = @board[end_y][end_x]
			return true if opposing_piece.nil?
			piece_to_move.color != opposing_piece.color
		end

		def occupied?(end_x, end_y)
			@board[end_y][end_x].nil?
		end
end