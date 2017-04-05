Rails.application.routes.draw do
  resources :hospitals
  devise_for :users
  get 'welcome/index'

  get 'welcome/about'

  get 'welcome/contact'

  get 'welcome/faq'

  get 'welcome/pricing'

  get 'welcome/features'

  resources :patients do
  	resources :referrals
  	end
 root to: 'welcome#index'
end
