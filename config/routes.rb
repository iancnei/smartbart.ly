Rails.application.routes.draw do

	get 'lines/index'

	get 'lines/show'

	root 'stations#index'

	get '/sign_in', to:'sessions#new'
	get '/users/new', to:'sessions#new'

	post "/sessions", to: "sessions#create"
	get '/sign_out', to: 'sessions#destroy'

	post 'favorites/new/:id', to: 'favorites#create'
	delete 'favorites/:id', to: 'favorites#destroy'

	get '/about_us', to: 'welcome#show'
	post '/tips', to: "tips#create"

	get '/profile', to: "users#show"

	resources :stations, :users, :lines


end
  