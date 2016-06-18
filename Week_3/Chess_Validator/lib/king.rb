class King < Piece
	include HorizontalMovement
	include VerticalMovement
	include DiagonalMovement

	def can_move?(ending_x, ending_y)
		super(ending_x, ending_y)
		is_vertical? || is_horizontal? || is_diagonal?
	end
end