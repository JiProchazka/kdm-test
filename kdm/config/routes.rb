Rails.application.routes.draw do
  get 'sessions/new'

	root 'welcome#index' 
  get 'welcome/index'
	resources :sessions, only: [:create]
	get '/login', to: 'sessions#new'
	get '/logout', to: 'sessions#destroy'
	resources :users, only: [:new, :create, :update, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
