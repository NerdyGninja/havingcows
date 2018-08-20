Rails.application.routes.draw do
  resources :merchandises
  resources :events
  resources :videos
  resources :songs

  root 'simple_pages#landing_page'
  get 'simple_pages/landing_page'
  get 'simple_pages/download_epk'
  post 'simple_pages/thank_you'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
