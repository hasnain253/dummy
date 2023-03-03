Rails.application.routes.draw do
  resources :nurses
  resources :receptions
  resources :hospitals
  resources :appointments
  resources :physicians
  resources :patients
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "hospitals#index"
end
