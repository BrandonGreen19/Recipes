class Recipe < ApplicationRecord
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  belongs_to :sub_category

  validates :title, presence: true
  validates :href, presence: true
end
