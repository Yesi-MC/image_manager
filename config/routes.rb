Rails.application.routes.draw do
  root "welcome#index"

  get '/login', to: 'sessions#login'
  get '/logout', to: 'sessions#logout'

  resources :users, only: [:new]
    get '/users/:id/dashboard', to: 'users/dashboard#index', as: :dashboard
    get '/users/:id/image/new', to: 'users/images#new', as: :new_user_image
end
