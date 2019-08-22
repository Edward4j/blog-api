Rails.application.routes.draw do
  # mount_ember_app :frontend, to: '/'
  # mount_ember_assets :frontend, to: "/"

  resources :publishing_houses
  resources :authors
  resources :books

  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # catchall route - send all other requests to the Ember app.
  get '*everything', to: 'frontend#index'
end
