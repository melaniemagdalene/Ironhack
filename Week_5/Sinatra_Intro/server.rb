require "sinatra"
require "sinatra/reloader" if development?
require "pry"

enable(:sessions)

users = {
	josh: "swordfish", #Josh is the key
	faraz: "password" #Faraz is the key
}

get "/login" do
	erb :login
end

post "/verify" do
	@username = params[:username]
	@password = params[:password]

	if users.has_key?(@username.to_sym) && users[@username.to_sym] == @password	#to_sym compares users
		
		session[:current_user] = @username
		redirect to("/users/#{@username}")
	else
		redirect to ("/login")
	end
end

get "/" do
	"Hello Sinatra"
end

get "/hi" do
	@greeting = "<strong>Hi, this is another route in my application.</strong>"
	erb :hi
end

get "/about" do
	erb :about
end

get "/time" do
	@time = Time.now
	erb :time
end

get "/pizza" do
	@ingredients = ["pepperoni", "sausage", "peppers", "mushrooms"]
	erb :pizza
end

get "/users/:username" do
	p params
	@username = params[:username]
	binding.pry
	erb :profile
end

get "/session_test/:text" do
	text = params[:text]
	session[:saved_value] = text
end

get "/session_show" do
	@my_text = session[:saved_value]
	erb :session_show
end

get "/hours/ago/:hours_ago" do
	@hours = (params[:hours_ago].to_i) * 60 * 60
	@new_time = Time.now - @hours
	erb :hours_ago
end