Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
        resources :users, only: [:index, :show, :create]
        resources :posts, only: [:index, :show]
        resources :comments, only: [:show]

        post '/sign_up', to: 'users#create'
        post "/login", to: "auth#create"
        get '/persist', to: 'auth#show'
    end
  end

  # get "/auto_login", to: "users#auto_login"
end
