json.extract! recipe, :id, :title, :href, :thumbnail, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
