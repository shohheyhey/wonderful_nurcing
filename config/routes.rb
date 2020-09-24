Rails.application.routes.draw do
  root to: "api/v1/customers#index"
  namespace :api do
    namespace :v1 do
      resources :customers
      resources :services
      mount_devise_token_auth_for "User", at: "auth", controllers: {
        registrations: "api/v1/auth/registrations",
        sessions: "api/v1/auth/sessions",
      }
    end
  end
end
