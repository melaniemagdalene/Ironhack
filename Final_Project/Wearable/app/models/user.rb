class User < ApplicationRecord
	attr_accessor :name, :email
	has_many :posts
end
