Rails.application.routes.draw do

  root 'welcome#index'

  resources :breweries
  resources :brewery_login
  resources :products
end
