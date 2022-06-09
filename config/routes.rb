Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
        resources :users, only: [:index, :show, :create]
        resources :recipes, only: [:index, :show, :create]
        resources :comments, only: [:show, :create]
        resources :recipe_likes
        resources :comment_likes

        post '/sign_up', to: 'users#create'
        post "/login", to: "auth#create"
        get '/persist', to: 'auth#show'
        
        get '/followrecipes/:id', to: 'users#showFolloweeRecipes'
        get '/userrecips/:id', to: 'users#showUserRecipes'
        post '/users/:id', to: 'users#update'
        delete '/users/:id', to: 'users#destroy'

        post '/relationships', to: 'relationships#create'
        delete '/relationships', to: 'relationships#destroy'

        post '/recips/:id', to: 'recips#update'
        delete '/recips/:id', to: 'recips#destroy'

        post '/comments/:id', to: 'comments#update'
        delete '/comments/:id', to: 'comments#destroy'

        post '/recipelikes', to: 'recipe_likes#create'
        delete '/recipelikes/:id', to: 'recipe_likes#destroy'

        post '/commentlikes', to: 'comment_likes#create'
        delete '/commentlikes/:id', to: 'comment_likes#destroy'
    end
  end
end
