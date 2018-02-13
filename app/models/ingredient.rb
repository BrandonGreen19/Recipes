class Ingredient < ApplicationRecord
  has_many :recipes, through: recipe_ingredients
  belongs_to :sub_category
end
