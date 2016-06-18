module DiagonalMovement
	def is_diagonal?(spaces_allowed = 1)
		dx_abs = @dx.abs
		dy_abs = @dy.abs

		dx_abs == dy_abs && 
		dx_abs <= spaces_allowed && 
		dy_abs <= spaces_allowed
	end
end