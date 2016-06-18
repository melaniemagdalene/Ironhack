class MovieSearcher
	def initialize (keyword)
		@term = Imdb::Search.new(keyword)
	end

	def search_movie()
		@movies=@term.movies[0..9]
	end
end