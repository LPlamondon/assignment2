Rails.application.routes.draw do

  get 'people/index'
  
  get 'people/display'

  #get 'people/new'

  #get 'people/show'

  get 'welcome/index' 

  resources :people
  resources :welcome #just in case
 
  root 'welcome#index'
end