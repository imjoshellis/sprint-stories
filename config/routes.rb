Rails.application.routes.draw do
  get "/", to: "projects#index"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "sessions/create"
  resources :roles
  resources :users
  resources :stories
  resources :sprints
  resources :goals
  resources :projects
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end