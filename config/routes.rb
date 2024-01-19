Rails.application.routes.draw do
  resources :pokemons, defaults: { format: :json }
  resources :champions, defaults: { format: :xml }
end
