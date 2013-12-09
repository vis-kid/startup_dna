StartupDna::Application.routes.draw do

	resources :videos,       only: [:index]
	resources :interviewees, only: [:index]

end
