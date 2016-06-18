module VerticalMovement
	def is_vertical?(spaces_allowed = 1)
		(@dy.abs <= spaces_allowed && @dx == 0)
	end
end