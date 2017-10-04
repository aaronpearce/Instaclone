Rails.application.routes.draw do
  	devise_for :users
	root to: 'home#index' 
	get "/:username", to: "users#show", as: "user_show"
	resources :posts
	root to: 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
