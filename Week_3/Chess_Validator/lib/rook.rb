class Rook < Piece
	include HorizontalMovement
	include VerticalMovement

	def can_move?(ending_x, ending_y)
		super(ending_x, ending_y)
		is_horizontal?(8) || is_vertical?(8)
	end
end