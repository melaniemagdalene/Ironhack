class Knight < Piece
	include LShaped

	def can_move?(ending_x, ending_y)
		super(ending_x, ending_y)
		is_l_shaped?
	end
end