class Category < ApplicationRecord
  has_many :sub_categories

  validates :name, presence: true, length: { minimum: 5 }
end
