class AddSubCategoryRefToRecipes < ActiveRecord::Migration[5.1]
  def change
    add_reference :recipes, :sub_category, foreign_key: true
  end
end
