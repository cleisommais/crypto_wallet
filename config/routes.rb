Rails.application.routes.draw do
  resources :coins

  # Redirect to welcome page/controller
  root to: 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
