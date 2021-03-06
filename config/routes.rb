Pharmareport::Application.routes.draw do
  resources :medical_shops
  resources :doctors
  resources  :appointments do
    resources :reports
  end
  resources :tab_users
  resources :sessions , only: [:new,:create,:destroy]
  match '/signup',  to: 'tab_users#new',  via: 'get'
  match '/login' , to: "sessions#new" , via: "get"
  match '/logout'  ,to: "sessions#destroy" , via: "delete"
  root 'appointments#index'
end
