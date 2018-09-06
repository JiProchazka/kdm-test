Rails.application.routes.draw do
  get 'products/index'

  get 'products/new'

  get 'products/update'

  get 'products/create'

  get 'products/delete'

  get 'sessions/new'

	root 'welcome#index' 
  get 'welcome/index'
	resources :sessions, only: [:create]
	get '/login', to: 'sessions#new'
	get '/logout', to: 'sessions#destroy'
	resources :users, only: [:new, :create, :update, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
