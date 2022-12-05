Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "tasks#index"
  get "/tasks", to: "tasks#index"
  get "/tasks/new", to:  "tasks#new"
  post "/tasks", to: "tasks#create"
  delete "tasks:id", to: "tasks#destroy", as: :delete_task
  # get "/tasks", to: "tasks#sort"
end
