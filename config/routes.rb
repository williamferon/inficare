Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'page#home'
  get 'patients', to: 'patients#index'
  # Defines the root path route ("/")
  # root "articles#index"
  resources :patients
end
