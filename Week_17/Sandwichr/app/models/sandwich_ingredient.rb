class SandwichIngredient < ApplicationRecord
	# Relationship between models
	belongs_to :sandwich
	belongs_to :ingredient
end
