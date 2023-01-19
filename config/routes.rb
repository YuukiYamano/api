Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :v1 do
    resources :todos,only: [:index,:create,:destroy]

    resources :users, only:[:index,:create]
  end

  
end
