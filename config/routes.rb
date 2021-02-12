# Here all the http request arrive and get match, if so they will be sent to the controller
# in the app/controllers folder, will find the file that matches the name of the controller
# 

Rails.application.routes.draw do
  # get "route" to: "controller#action"

  # Get /about http.1.1
  get "about", to: "about#index"

  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"
  
  root to: "main#index"
  # get "/", to: "main#index"
end
