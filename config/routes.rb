Rails.application.routes.draw do
  # mount_ember_app :frontend, to: '/'

  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # catchall route - send all other requests to the Ember app.
  get '*everything', to: 'frontend#index'
end
