Rails.application.routes.draw do
  get 'static_pages/about'

  resources :categories
  resources :sub_categories
  resources :ingredients
  resources :recipes
  get 'recipes/index'

  root 'recipes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
