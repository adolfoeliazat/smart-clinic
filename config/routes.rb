Rails.application.routes.draw do
  get 'users/show'
  
  resources :hospitals
  devise_for :users
  resources :users
  get 'welcome/index'

  resources :patients do
  	resources :referrals
  	end
 root to: 'welcome#index'
end
