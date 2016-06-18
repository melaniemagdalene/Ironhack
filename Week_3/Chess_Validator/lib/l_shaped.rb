module LShaped
	def is_l_shaped?
		dx_abs = @dx.abs
		dy_abs = @dy.abs

		(dx_abs == 2 && dy_abs == 1) ||
		(dy_abs == 2 && dx_abs == 1)
	end
end