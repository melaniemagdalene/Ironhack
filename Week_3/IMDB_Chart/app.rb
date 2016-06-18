require("imdb")
require_relative("lib/MovieChart.rb")

trek_search = Imdb::Search.new("Star Trek")
diehard_search = Imdb::Search.new("Die Hard")
the_godfather_search = Imdb::Search.new("The Godfather")
home_alone_search = Imdb::Search.new("Home Alone")
fast_and_furious_search = Imdb::Search.new("Fast and Furious")
titanic_search = Imdb::Search.new("Titanic")
the_night_of_the_living_dead_search = Imdb::Search.new("The Night of The Living Dead")
diehard_search = Imdb::Search.new("Die Hard")

movies = [] 
movies.push(trek_search.movies[0])
movies.push(diehard_search.movies[0])
movies.push(the_godfather_search.movies[0])
movies.push(home_alone_search.movies[0])
movies.push(fast_and_furious_search.movies[0])
movies.push(the_night_of_the_living_dead_search.movies[0])
movies.push(titanic_search.movies[0])

my_chart = MovieChart.new(movies)
my_chart.print_chart
my_chart.print_numbers

# movies.each do | movie | 
# 	puts "#{movie.title}: #{movie.rating}"
# end