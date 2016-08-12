class AddIdsToSandwichIngredients < ActiveRecord::Migration[5.0]
  def change
    add_column :sandwich_ingredients, :sandwich_id, :integer
    add_column :sandwich_ingredients, :ingredient_id, :string
    add_column :sandwich_ingredients, :integer, :string
  end
end
