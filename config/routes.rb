Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
   resources :listings, only: %i[index show] do
    resources :bookings, only: %i[index create show update delete]
    resources :reviews, only: %i[create update delete]
  end
end
