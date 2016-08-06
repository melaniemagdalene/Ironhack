class AddDefaultValueToVotesInPosts < ActiveRecord::Migration
  def change
  				# :table  :column :type   :options
  	change_column :posts, :nov, :integer, :default => 0
  end
end
