# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)
#
#
# require 'net/http'
# require 'json'
# require 'pp'
#
#
# cats = "beef","chicken"
#
# category = Category.find_or_create_by(name: "recipe")
#
# Recipe.destroy_all
# Ingredient.destroy_all
# SubCategory.destroy_all
#
# cats.each do |cat|
#
#   subCategory = SubCategory.create(name: cat, Category: category)
#
#
#   3.times do |i|
#
#
#     url = "http://www.recipepuppy.com/api/?q=#{cat}&p=#{i + 1}"
#
#     uri = URI(url)
#     response = Net::HTTP.get(uri)
#
#     # create recipes
#
#     recipes = JSON.parse(response)
#     recipes["results"].each() do |recipe|
#
#       # puts "Recipe: #{recipe["title"].capitalize}"
#       ingredient_list = recipe['ingredients']
#       ingredients = ingredient_list.split(',')
#       # if recipe[1].empty? == false
#       ingredients.each() do |ingredient|
#         puts "    ingredient: #{ingredient.capitalize}"
#       end
#       puts recipe['href']
#       puts recipe['thumbnail']
#       # end
#     end
#
#   end
# end
#
#
#
#
#
#
# # csv_ingredients = csv_recipe[:ingredient].split(',').map(&:strip).compact
# # csv_recipe.delete(:ingredient)
# # recipe = Recipe.create(csv_recipe)
# #
# # csv_ingredients.each do |m|
# #   ingredient = Ingredient.find_or_create_by_name(name: m)
# #   RecipeIngredient.create(recipe: recipe, ingredient: ingredient)
# # end
#
#
#
# # csv_mechanics = csv_game[:mechanic].split(',').map(&:strip).compact
# # csv_game.delete(:mechanic)
# # game = BoardGame.create(csv_game)
# # csv_mechanics.each do |m|
# # 	mechanic = Mechanic.find_or_create_by_name(name: m)
# # 	BoardGameMechanic.create(board_game: game, mechanic:mechanic)
# # end
#

category = Category.find_or_create_by(name: 'ingredients')
SubCategory.create(name: 'unknown', category: category)