Rails.application.routes.draw do


  post "/tickets", to: "tickets#create"

  delete "/tickets/:id", to: "tickets#destroy"

  put "/tickets/:id" , to: "tickets#update"

  get "/tickets/:id", to: "tickets#show"

  post "/events", to: "events#create"

  delete "/events/:id", to: "events#destroy"

  put "/events/:id" , to: "events#update"

  get "/events/:id", to: "events#show"

  post "/users", to: "users#create"

  delete "/users/:id", to: "users#destroy"

  put "/users/:id" , to: "users#update"

  get "/users/:id", to: "users#show"

  post "/places", to: "places#create"

  delete "/places/:id", to: "places#destroy"

  put "/places/:id" , to: "places#update"

  get "/places/:id", to: "places#show"

  get "/tickets/most_expensives/:id", to: "tickets#most_expensives"

  resources :user do
    resources :tickets
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
