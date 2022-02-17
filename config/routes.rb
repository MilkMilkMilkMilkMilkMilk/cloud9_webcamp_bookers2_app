Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/top"=>'homes#top'
  get "home/about"=>"homes#about",as: :homes

  resources :books
  resources :users
end
