StartupDna::Application.routes.draw do

	root to: 'videos#index', via: :get
	resources :videos,       only: [ :index ]
	resources :interviewees, only: [ :index, :new, :create ]

end
