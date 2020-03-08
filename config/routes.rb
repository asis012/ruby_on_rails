Rails.application.routes.draw do

 


  

  get 'help' => 'static_pages#help'
  get 'home' => 'static_pages#home'
  get 'about' => 'static_pages#about'
  get 'contact' => "static_pages#contact"
  get 'signup' => 'users#new'
  post 'signup' => 'users#create'
  resources :users
  root 'static_pages#home'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  resources :account_activations, only: [:edit]
  resources :microposts, only: [:create, :destroy]



  # get 'about' => 'pages#about'
  # post 'signup' => 'users#create' 
  #get 'post/create'
  # get 'new' => "post#new"
  # post 'create' => "post#create"
  #  resources :post
  #root 'application#hello'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
