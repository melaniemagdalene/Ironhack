class ApplicationController < ActionController::Base
	# Every controller inherits from ApplicationController

	# Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
	
	protect_from_forgery with: :exception

	helper_method :current_user

	def current_user
		if @current_user.nil?
			@current_user = User.find_by(id: session[:user_id])
		end

		@current_user
	end
end