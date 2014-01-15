Wikiful::Application.routes.draw do

   root 'welcome#index'
   resources :articles

end
