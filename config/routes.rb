Rails.application.routes.draw do
  resources :tournaments
  resources :user_games
  resources :games
  resources :users

  #This makes root our home page.
	root to: 'pages#home'

  # sign up page with form:
  # get "/users/new", to: 'users#new', as: "/users/sign_up"
  # post "/users", to: 'users#create'

end
