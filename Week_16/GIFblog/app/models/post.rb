class Post < ActiveRecord::Base

	def self.show_post
		order(title: :ASC)
	end
end
