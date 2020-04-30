Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/bikes" => "bikes#index"
    post "/bikes" => "bikes#create"
    get "/bikes/:id" => "bikes#show"
    patch "/bikes/:id" => "bikes#update"
    delete "/bikes/:id" => "bikes#destroy"

    post "/users" => "users#create"
  end
end
