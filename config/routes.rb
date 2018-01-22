Rails.application.routes.draw do

	root 'suspects#index', as: 'home'
  
	
	resource :suspects do
		member do
			get :by_email
		end
	end
end
