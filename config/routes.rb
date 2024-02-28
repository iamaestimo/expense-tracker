Rails.application.routes.draw do
  # GoodJob
  mount GoodJob::Engine => 'good_job'

  get 'rates/index', to: "rates#index", as: :rates
  resources :expenses
  devise_for :users
  get "up" => "rails/health#show", as: :rails_health_check
  root "home#welcome"
end
