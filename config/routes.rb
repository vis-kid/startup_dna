StartupDna::Application.routes.draw do
    
  root to: 'high_voltage/pages#show', id: 'homepage', via: :get
	

	resources :videos,       only: [ :index ]
	resources :interviewees, only: [ :index, :new, :create ]
	resources :interviewees_profiles,     only: [:show]

  get 'pages/documentary'      => 'high_voltage/pages#documentary', id: 'documentary'
  get 'pages/about'      => 'high_voltage/pages#about', id: 'about'
  get 'pages/contact'      => 'high_voltage/pages#contact', id: 'contact'
end
