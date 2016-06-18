class Fixnum
	def positive?
		self > 0
	end

	def negative?
		self < 0
	end
end

class Pawn < Piece
	include VerticalMovement
	include DiagonalMovement

	def initialize(starting_x, starting_y, color)
		super(starting_x, starting_y, color)
		@has_moved = false
	end

	def can_move?(ending_x, ending_y)
		@dx = diff_x(ending_x)
		@dy = diff_y(ending_y)

		@max_spaces = moved? ? 1 : 2
		@has_moved = true unless moved?
	end

	private

		def moved?
			@has_moved == true
		end
end