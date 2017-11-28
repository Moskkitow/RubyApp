Rails.application.routes.draw do
  namespace :backoffice do
    get 'dashboard', to: 'dashboard#index'
  end

  devise_for :admins
  devise_for :members

  namespace :site do
    get 'home', to: 'home#index'
  end

  root 'site/home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html  

end
