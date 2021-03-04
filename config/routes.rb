Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
        resources :users, only: [:index, :show, :create]
        resources :posts, only: [:index, :show, :create]
        resources :comments, only: [:show]

        post '/sign_up', to: 'users#create'
        post "/login", to: "auth#create"
        get '/persist', to: 'auth#show'
        
        get '/followposts/:id', to: 'users#showFolloweePosts'
        get '/userposts/:id', to: 'users#showUserPosts'

        post '/relationships', to: 'relationships#create'
        delete '/relationships', to: 'relationships#destroy'
    end
  end
end
