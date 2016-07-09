class Comment < ActiveRecord::Base
	# Establish relationship between concert and comment
	belongs_to :concert

	# Ensures comment field is filled
	validates :comment, presence: true
end
