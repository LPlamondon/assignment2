Rails.application.routes.draw do

  get 'people/index'

  #get 'people/new'

  #get 'people/show'

  get 'welcome/index' 

  resources :people
 
  root 'welcome#index'
end