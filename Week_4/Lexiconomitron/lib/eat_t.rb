class Lexiconomitron

	def eat_t(string)
		less_t = string.gsub!('t', "")
	end

	def shazam(array)
		shazam_it = array.each do |word|
			word.reverse!
		end
		first_word = eat_t(shazam_it.first)
		last_word = eat_t(shazam_it.last)
		array = []
		array.push(last_word)
		array.push(first_word)

	end

end