Rails.application.routes.draw do
	resources :posts do
  		resources :comments
        member do
        get 'like'
      end
      
	end
  	devise_for :users, controllers: {
        sessions: 'users/sessions', registrations: 'registrations'
      }
	root to: 'posts#index' 
	get "/:username", to: "users#show", as: "user_show"
	as :user do
  get 'users', :to => 'users#show', :as => :user_root # Rails 3
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
