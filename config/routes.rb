Rails.application.routes.draw do
  resources :customers
  resources :services
  mount_devise_token_auth_for "Office", at: "auth"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
