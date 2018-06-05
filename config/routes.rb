Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'

  get "/users" => 'users#index'
  get "/users/:id" => 'users#show'
  post "/users" => 'users#create'
end
