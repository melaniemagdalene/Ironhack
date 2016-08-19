class AddUserIdToComicBook < ActiveRecord::Migration[5.0]
  def change
    add_column :comic_books, :user, :reference
  end
end
