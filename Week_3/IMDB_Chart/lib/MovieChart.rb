class MovieChart

	def initialize(movies)
		@movies = movies
	end

	def print_chart
		10.downto(1) do |i|
			chart = ""
			@movies.each do | movie |
				# puts "#{movie.title} and #{movie.rating}"
								if movie.rating >= i
					chart += "|#" 
				else
					chart += "| "
				end
			end
			chart += "|\n"
			puts chart
		end
	end

	def print_numbers
		# 		new_chart = ""
		# @movies.each_with_index do |movie,index|
		# 	new_chart += "-\n"
		# 	new_chart += "#{index}"
		# 	new_chart += "\n"
		# end
		# puts new_chart
		puts "---------------"
		(1..(@movies.length)).each do |num|
			print "|#{num}"
		end
		print "|\n"
	end

end