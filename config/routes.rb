StartupDna::Application.routes.draw do

	resources :videos, only: [:index]
end
