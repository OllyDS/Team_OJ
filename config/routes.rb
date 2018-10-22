Rails.application.routes.draw do
  resources :tournaments
  resources :user_games
  resources :games
  resources :users

  root to: 'pages#home' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
