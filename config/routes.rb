Rails.application.routes.draw do
  resources :skills
  resources :survivors
  resources :cards
  resources :games
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
