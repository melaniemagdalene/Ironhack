class Post < ActiveRecord::Base
	has_and_belongs_to_many :users
	
	default_scope -> { order(created_at: :desc) }
	validates :title, presence: true
	validates :description, presence: true
end
