class Validator
	def initialize(moves, board)
		@moves, @board = moves, board
	end

	def run_validations
		@moves.each do | move |
			start_pos, end_pos = move.split(" ")

			start_x, start_y = MoveSplitter.new(start_pos).coords
			end_x, end_y = MoveSplitter.new(end_pos).coords

			puts @board.can_move?(start_x, start_y, end_x, end_y)
		end
	end
end