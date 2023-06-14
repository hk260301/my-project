Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
    resources :posts
    resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  post '/login', to: 'auth#create'
  get '/current_user', to: 'auth#show'
  post '/sign_up', to: 'users#create'
   end
   end
  # Defines the root path route ("/")
  # root "articles#index"
end
