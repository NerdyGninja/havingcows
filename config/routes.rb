Rails.application.routes.draw do
  resources :events
  resources :videos
  resources :songs
	#root 'simple_pages#index'
  get 'simple_pages/index'
  root 'simple_pages#landing_page'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
