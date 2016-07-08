# rails generate model bid amount:integer user:references product:references
# 'references' is used for belongs_to

class Bid < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
end
