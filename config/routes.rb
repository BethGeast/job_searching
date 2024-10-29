Rails.application.routes.draw do
  # root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root to: "jobs#index"
  get "/new", to: "jobs#new", as: :new_job
  post "/", to: "jobs#create"
  get "/:id/edit", to: "jobs#edit", as: :edit_job
  patch "/:id", to: "jobs#update"
  # resources :jobs, only: %i[new create edit update]
end
