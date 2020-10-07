Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "pages#home"

  get "admin-use-only", to: "pages#login_the_admin"

  get "admin-root", to: "pages#admin_home"

  get "restricted-url", to: "pages#restricted_area"

  resources :users, only: [:show] do

    resources :ateliers

    resources :boxs

    resources :formations

  end

  resources :ateliers, only: [:show, :index]

  resources :boxs, only: [:show, :index]

  resources :formations, only: [:show, :index]

end
