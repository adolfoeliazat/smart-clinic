Rails.application.routes.draw do
  resources :hospitals
  devise_for :users
  get 'welcome/index'

  resources :patients do
  	resources :referrals
  	end
 root to: 'welcome#index'
end
