Rails.application.routes.draw do
  resources :jobapplications
  devise_for :users
  resources :jobslists
  get 'home/about'

  # This route is to view the index page when I open the web application.
  root to: 'home#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
