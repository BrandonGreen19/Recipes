class SubCategory < ApplicationRecord
  belongs_to :Category
  has_many :recipes
  has_many :ingredients
end
