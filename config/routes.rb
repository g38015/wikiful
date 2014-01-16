Wikiful::Application.routes.draw do

  resources :users

   root 'welcome#index'
   resources :articles
   resources :categories

end
