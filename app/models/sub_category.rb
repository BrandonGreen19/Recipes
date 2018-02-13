class SubCategory < ApplicationRecord
  belongs_to :Category
  has_many :recipes
  has_many :ingredients

  validates :name, presence: true, length: { minimum: 5 }
end
