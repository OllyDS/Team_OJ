Rails.application.routes.draw do
  #This makes root our home page.
  root to: 'pages#home'
  get '/about' => 'pages#about'

  # get 'users/new' => 'users#new', as: :new_user
  # post 'users' => 'users#create'

  # log in page with form:
  get '/login' => 'sessions#new'
  # create (post) action for when log in form is submitted:
  post '/login' => 'sessions#create'
  # action to log out:
  post '/logout', to: 'sessions#destroy', as: 'logout'

  resources :tournaments
  resources :games
  resources :users
  resources :user_tournaments, only: [:new, :create, :destroy]
  resources :pages

end
