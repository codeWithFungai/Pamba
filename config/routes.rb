Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get 'test_page', to: 'pages#test_page'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
   resources :listings, only: %i[index show] do
    resources :bookings, only: %i[create update]
  end

  resources :bookings, only: %i[destroy] do
    resources :reviews, only: %i[create update destroy]

  end

  get 'bookings', to: 'bookings#index'
end
