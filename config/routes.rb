Rails.application.routes.draw do
  resources :ttds
  root 'ttds#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
