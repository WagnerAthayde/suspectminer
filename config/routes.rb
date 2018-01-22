Rails.application.routes.draw do

	root 'suspects#index', as: 'home'
  
	
	resource :suspects do
		member do
			get :by_guid
		end
	end
end
