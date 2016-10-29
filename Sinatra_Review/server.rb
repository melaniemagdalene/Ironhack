# Server saddress: localhost:4567

require 'sinatra'
require 'sinatra/reloader'

get '/' do
	@greeting = "Hello"
	erb :home
end
