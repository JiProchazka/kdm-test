Rails.application.routes.draw do


	root 'welcome#index' 
  get 'welcome/index'
	
	resources :sessions, only: [:create, :new]
	get '/login', to: 'sessions#new'
	get '/logout', to: 'sessions#destroy'
	
	resources :users, except: [:show]

	resources :products, except: [:show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
