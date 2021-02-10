Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :subscribers, only: [:index, :create]
  root to: 'subscribers#index'
  get "/kontakt", to: "application#kontakt"
  get "/news", to: "application#news"
  get "/buch", to: "application#buch"
  get "/impressum", to: "application#impressum"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
