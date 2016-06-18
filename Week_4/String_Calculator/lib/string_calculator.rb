class StringCalculator
	def add(numbers_as_string)
		numbers_as_string.split(',').reduce(0) { 
			| sum, x | sum + x.to_i
		}
	end
end