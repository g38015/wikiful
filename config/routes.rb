Wikiful::Application.routes.draw do

   root 'welcome#index'
   get 'signup', to: 'users#new', as: 'signup'
	 get 'login', to: 'sessions#new', as: 'login'
	 get 'logout', to: 'sessions#destroy', as: 'logout'
   resources :articles
   resources :categories
   resources :users
   resources :sessions

end
