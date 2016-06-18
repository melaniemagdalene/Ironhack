class BlackPawn < Pawn
	def can_move?(ending_x, ending_y)
		super(ending_x, ending_y)
		if @dy.positive? && is_vertical?(@max_spaces)
			true
		else
			false
		end 
	end
end