Rails.application.routes.draw do
  devise_for :users

  authenticated :user do 
    get 'items/index', as: :authenticated_root
  end 

  unauthenticated :user do 
    get 'welcome/index', as: :unauthenticated_root
  end 

  resources :items

  resources :users

  root 'welcome#index'
end
