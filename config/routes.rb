Wikiful::Application.routes.draw do

   root 'welcome#index'
   resources :articles
   resources :categories

end
