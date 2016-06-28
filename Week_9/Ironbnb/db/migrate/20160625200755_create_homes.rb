class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :title
      t.string :city
      t.string :owner
      t.string :description
      t.decimal :price
      t.text :pic_url

      t.timestamps null: false
    end
  end
end
