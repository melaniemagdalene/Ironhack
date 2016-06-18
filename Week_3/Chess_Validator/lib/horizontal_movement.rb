module HorizontalMovement
	def is_horizontal?(spaces_allowed = 1)
		(@dy == 0 && @dx.abs <= spaces_allowed)
	end
end