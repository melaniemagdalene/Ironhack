class ApplicationController < ActionController::Base
	# Every controller inherits from ApplicationController
	protect_from_forgery with: :exception
end
