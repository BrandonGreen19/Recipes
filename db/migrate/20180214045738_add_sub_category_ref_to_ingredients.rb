class AddSubCategoryRefToIngredients < ActiveRecord::Migration[5.1]
  def change
    add_reference :ingredients, :sub_category, foreign_key: true
  end
end
