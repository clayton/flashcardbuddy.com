Rails.application.routes.draw do
  get 'flash_card_sets/index'
  get 'flash_card_sets/show'
  get 'flash_card_sets/new'
  get 'flash_card_sets/edit'
  get 'documents/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :documents

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  root "documents#new"
end
