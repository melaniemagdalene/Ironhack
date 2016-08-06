class Post < ActiveRecord::Base

	def self.show_post
		order(title: :ASC)
	end

	def upvote
		votes = self.nov
		update(nov: votes + 1)
	end

	def downvote
		votes = self.nov
		update(nov: votes - 1)
	end
end
