Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :subscribers, only: [:index, :create]
  root to: 'subscribers#index'
  get "/kontakt", to: "application#kontakt"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
