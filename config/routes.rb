Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "pages#home"

  get "admin-platform", to: "pages#admin_platform"

  # get "restricted-url", to: "pages#restricted_area"

  resources :users

  resources :ateliers

  resources :boxes

  resources :formations

end
