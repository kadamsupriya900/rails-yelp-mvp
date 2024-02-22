Rails.application.routes.draw do
  #   # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  #   # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  #   # Can be used by load balancers and uptime monitors to verify that the app is live.
  #   get "up" => "rails/health#show", as: :rails_health_check
  #   resources :restaurants

  #   # Defines the root path route ("/")
  #   # root "posts#index"

  # Restaurants
  get 'restaurants', to: 'restaurants#index'
  get '/restaurants/new', to: 'restaurants#new'
  get '/restaurants/:id', to: 'restaurants#show', as: :restaurant
  post 'restaurants', to: 'restaurants#create'

  # Review
  get 'restaurants/:id/reviews/new', to: 'reviews#new'
  post 'restaurants/:id/reviews', to: 'reviews#create'
  delete 'reviews/:id', to: 'reviews#destroy'
end
