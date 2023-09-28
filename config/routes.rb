Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'page#home'
  get 'patients', to: 'patients#index'
  get 'patients/new', to: 'patients#new'

  # Defines the root path route ("/")
  # root "articles#index"
  resources :patients
end
