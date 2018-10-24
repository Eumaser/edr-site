Rails.application.routes.draw do

  devise_for :users
  get 'home/index'
    get 'animes/index'
  root 'home#index'

  resources :animes


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
