Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
        resources :users, only: [:index, :show, :create]
        resources :posts, only: [:index, :show, :create]
        resources :comments, only: [:show, :create]
        resources :post_likes

        post '/sign_up', to: 'users#create'
        post "/login", to: "auth#create"
        get '/persist', to: 'auth#show'
        
        get '/followposts/:id', to: 'users#showFolloweePosts'
        get '/userposts/:id', to: 'users#showUserPosts'
        post '/users/:id', to: 'users#update'
        delete '/users/:id', to: 'users#destroy'

        post '/relationships', to: 'relationships#create'
        delete '/relationships', to: 'relationships#destroy'

        post '/posts/:id', to: 'posts#update'
        delete '/posts/:id', to: 'posts#destroy'

        post '/comments/:id', to: 'comments#update'
        delete '/comments/:id', to: 'comments#destroy'

        post '/postlikes', to: 'post_likes#create'
        delete '/postlikes/:id', to: 'post_likes#destroy'
    end
  end
end
