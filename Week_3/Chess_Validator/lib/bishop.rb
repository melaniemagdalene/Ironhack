class Bishop < Piece
	include DiagonalMovement

	def can_move?(ending_x, ending_y)
		super(ending_x, ending_y)
		is_diagonal?(8)
	end
end