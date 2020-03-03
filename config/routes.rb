Rails.application.routes.draw do

 


  get 'help' => 'static_pages#help'
  get 'home' => 'static_pages#home'
  get 'about' => 'static_pages#about'
  get 'contact' => "static_pages#contact"


  get 'signup' => 'users#new'
  # get 'about' => 'pages#about'

   root 'static_pages#home'
  #get 'post/create'
  get 'new' => "post#new"
  post 'create' => "post#create"
  #  resources :post
  #root 'application#hello'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
