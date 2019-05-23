Rails.application.routes.draw do
  resources :names
  root 'names#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
