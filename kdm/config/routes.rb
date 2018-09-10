Rails.application.routes.draw do

  get 'orders/index'

  get 'orders/new'

  get 'orders/create'

  get 'orders/update'

  get 'orders/destroy'

  get 'order_items/index'

  get 'order_items/new'

  get 'order_items/create'

  get 'order_items/update'

  get 'order_items/destroy'

	root 'welcome#index' 
  get 'welcome/index'
	
	resources :sessions, only: [:create, :new]
	get '/login', to: 'sessions#new'
	get '/logout', to: 'sessions#destroy'
	
	resources :users, except: [:show]

	resources :products, except: [:show]

end
