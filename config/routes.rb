Rails.application.routes.draw do
 root to: 'static_pages#home'
  get    'signup', to: 'users#new'
  get    'login' , to: 'sessions#new'
  post   'login' , to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get    '/users/:id/followings' , to: 'users#followings' , as: 'followings'
  get    '/users/:id/followers'  , to: 'users#followers' , as: 'followers'
  get    '/users/:id/favo'       , to: 'users#favo'      , as: 'favos'
  
  resources :users 
  resources :sessions, only: [:new, :create, :destroy]
  resources :microposts
  resources :relationships, only: [:create, :destroy]
  resources :repostings, only: [:create]
  resources :favrelationships, only: [:create, :destroy]
  
end