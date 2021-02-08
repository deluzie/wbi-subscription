Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :subscribers
  root to: 'subscribers#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
