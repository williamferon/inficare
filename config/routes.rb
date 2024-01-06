Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'page#home'
  resources :patients do
    resources :incidents
    resources :absences
    resources :info_medicales
    resources :prise_en_charges do
      resources :soins_infirmers
      resources :soins_kiners
    end
  end
  resources :channels do
    resources :sub_channels
  end
  get 'patients', to: 'patients#index'
  # Defines the root path route ("/")
  # root "articles#index"
  resources :kines
  resources :infis
  resources :prise_en_charges
end

# config/routes.rb
