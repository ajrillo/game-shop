Rails.application.routes.draw do
  resources :users
  resources :invoices
  resources :prices
  resources :games
  resources :customers
  
  get 'private/home'
  get 'private/custgamesin'
  post 'private/custgamesin'
  get 'private/custgamesout'
  post 'private/custgamesout'
  
  controller :private do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
  
  get 'private/new'
  post 'private/new'
  get 'private/create'
  post 'private/create'

  get 'home/home'
  get 'home/inquiry'
  get 'home/new'
  get 'home/game'
  get 'home/price'

  root :to => 'home#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
