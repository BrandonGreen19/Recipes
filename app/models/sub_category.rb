class SubCategory < ApplicationRecord
  belongs_to :category
  has_many :recipes
  has_many :ingredients

  validates :name, presence: true, length: { minimum: 3 }
end
