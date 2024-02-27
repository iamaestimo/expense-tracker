Rails.application.routes.draw do
  resources :expenses
  devise_for :users
  get "up" => "rails/health#show", as: :rails_health_check
  root "home#welcome"
end
