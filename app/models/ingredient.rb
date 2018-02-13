class Ingredient < ApplicationRecord
  has_many :recipes, through: :recipe_ingredients
  belongs_to :sub_category

  validates :name, presence: true, length: { minimum: 5 }
end
