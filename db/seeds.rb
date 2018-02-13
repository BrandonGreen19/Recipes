# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



csv_ingredients = csv_recipe[:ingredient].split(',').map(&:strip).compact
csv_recipe.delete(:ingredient)
recipe = Recipe.create(csv_recipe)

csv_ingredients.each do |m|
  ingredient = Ingredient.find_or_create_by_name(name: m)
  RecipeIngredient.create(recipe: recipe, ingredient: ingredient)
end



# csv_mechanics = csv_game[:mechanic].split(',').map(&:strip).compact
# csv_game.delete(:mechanic)
# game = BoardGame.create(csv_game)
# csv_mechanics.each do |m|
# 	mechanic = Mechanic.find_or_create_by_name(name: m)
# 	BoardGameMechanic.create(board_game: game, mechanic:mechanic)
# end