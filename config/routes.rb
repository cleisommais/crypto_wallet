Rails.application.routes.draw do
  # /coins [get/post/delete/path/put]
  resources :coins

  # Redirect to welcome page/controller
  root to: 'welcome#index'

  get '/index', to: 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
