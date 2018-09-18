Rails.application.routes.draw do
	root 'welcome#index'
  get 'welcome/index'

	resources :sessions, only: [:create, :new]
	get '/login', to: 'sessions#new'
	get '/logout', to: 'sessions#destroy'

	resources :users, except: [:show]
	resources :products, except: [:show]
	resources :orders, except: [:show]
end
