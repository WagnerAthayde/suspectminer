Rails.application.routes.draw do

	root 'suspects#index', as: 'home'
  
	#sets the method for the suspect creation (used for developing)
	get 'suspects/new' => 'suspects#new'
	post 'suspects' => 'suspects#create'
	get 'suspects/:id' => 'suspects#show'

end
