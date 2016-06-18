require "sinatra"
require "sinatra/reloader" if development?
require "imdb"
require_relative "lib/movie_search.rb"

enable(:sessions)

get '/' do 
	erb :index
end

get "/movie_picker" do
	@input = params[:movie_term] #search
	@moviesearch = MovieSearcher.new(@input)
	@movies=@moviesearch.search_movie

	erb :movie_picker
end
