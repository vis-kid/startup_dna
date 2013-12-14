StartupDna::Application.routes.draw do

	root to: 'videos#index'
	resources :videos,       only: [ :index ]
	resources :interviewees, only: [ :index, :new, :create ]

end
