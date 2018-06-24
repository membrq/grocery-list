Rails.application.routes.draw do
  devise_for :users

  authenticated :user do 
    get 'lists/index', as: :authenticated_root
  end 

  unauthenticated :user do 
    get 'welcome/index', as: :unauthenticated_root
  end 

  #resources :users, except: [:new, :destroy] #do 
    #resources :lists, except: [:index, :show]
 # end 

  #resources :lists, except: [:index, :new, :show]

  #get '/lists/:id', to: 'lists#show'

  #resources :lists, only: [:index, :show] do
  resources :items
  #end 

  resources :users

  root 'welcome#index'
end
