# http://localhost:3000/users/1/products/new

class Product < ActiveRecord::Base
  belongs_to :user
end
