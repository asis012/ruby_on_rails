Rails.application.routes.draw do

  get 'static_pages/home'

  get 'static_pages/help'
  get 'static_pages/about'
  get 'about' => 'pages#about'
  root 'static_pages#home'
  # get 'post/new'
  resources :post
  #root 'application#hello'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end