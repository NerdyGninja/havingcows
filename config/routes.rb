Rails.application.routes.draw do
  root 'simple_pages#landing_page'
  get 'simple_pages/landing_page'
  get 'simple_pages/download_epk'
  post 'simple_pages/thank_you'

  devise_for :users
  resources :users, :products, :images, :events, :videos, :songs
  resources :orders, only: [:index, :show, :create, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
